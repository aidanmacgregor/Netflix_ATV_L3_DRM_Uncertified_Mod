.class Lcom/netflix/ninja/MainActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/ninja/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/ninja/MainActivity;


# direct methods
.method constructor <init>(Lcom/netflix/ninja/MainActivity;)V
    .locals 0

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/netflix/ninja/MainActivity$7;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1056
    iget-object v3, p0, Lcom/netflix/ninja/MainActivity$7;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v3}, Lcom/netflix/ninja/MainActivity;->access$1600(Lcom/netflix/ninja/MainActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1057
    const-string v3, "netflix-activity"

    const-string v4, "UI is not visible, do not display error dialog, just kill app process"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->killAppProcess()V

    .line 1074
    :goto_0
    return-void

    .line 1062
    :cond_0
    const-string v3, "status"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/netflix/mediaclient/StatusCode;->getStatusCodeByValue(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    .line 1063
    .local v2, "statusCode":Lcom/netflix/mediaclient/StatusCode;
    const-string v3, "message_id"

    const v4, 0x7fffffff

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1064
    .local v1, "messageId":I
    if-nez v2, :cond_2

    .line 1065
    const-string v3, "netflix-activity"

    const-string v4, "Required to display error dialog without status code!"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/netflix/ninja/MainActivity$7;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v3, v1, v2}, Lcom/netflix/ninja/MainActivity;->access$1700(Lcom/netflix/ninja/MainActivity;ILcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/netflix/ninja/MainActivity$7;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v3, v0}, Lcom/netflix/ninja/MainActivity;->access$1800(Lcom/netflix/ninja/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1067
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    const-string v3, "netflix-activity"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1068
    const-string v3, "netflix-activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Required to display error dialog with status code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
