.class abstract Lo/ᖨ$aux;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ᒴ$ˊ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᖨ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "aux"
.end annotation


# instance fields
.field final synthetic Dk:Lo/ᖨ;


# direct methods
.method private constructor <init>(Lo/ᖨ;)V
    .locals 0

    iput-object p1, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ᖨ;Lo/ᖪ;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ᖨ$aux;-><init>(Lo/ᖨ;)V

    return-void
.end method


# virtual methods
.method public ܙ(I)V
    .locals 6

    iget-object v0, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-static {v0, p1}, Lo/ᖨ;->ˊ(Lo/ᖨ;I)V

    iget-object v0, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-virtual {v0}, Lo/ᖨ;->connect()V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-virtual {v0}, Lo/ᖨ;->Ⴡ()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ᖨ;->ˊ(Lo/ᖨ;Z)Z

    iget-object v0, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    iget-object v0, v0, Lo/ᖨ;->CQ:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    new-instance v1, Lo/ᖨ$ˎ;

    iget-object v2, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-direct {v1, v2}, Lo/ᖨ$ˎ;-><init>(Lo/ᖨ;)V

    iput-object v1, v0, Lo/ᖨ;->CQ:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˏ(Lo/ᖨ;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    iget-object v1, v1, Lo/ᖨ;->CQ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ᐝ(Lo/ᖨ;)Lo/ᖨ$ˋ;

    move-result-object v0

    iget-object v1, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-static {v1}, Lo/ᖨ;->ᐝ(Lo/ᖨ;)Lo/ᖨ$ˋ;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lo/ᖨ$ˋ;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-static {v2}, Lo/ᖨ;->ʻ(Lo/ᖨ;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lo/ᖨ$ˋ;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ᐝ(Lo/ᖨ;)Lo/ᖨ$ˋ;

    move-result-object v0

    iget-object v1, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-static {v1}, Lo/ᖨ;->ᐝ(Lo/ᖨ;)Lo/ᖨ$ˋ;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lo/ᖨ$ˋ;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-static {v2}, Lo/ᖨ;->ʼ(Lo/ᖨ;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lo/ᖨ$ˋ;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-static {v0, p1}, Lo/ᖨ;->ˊ(Lo/ᖨ;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v5

    iget-object v0, p0, Lo/ᖨ$aux;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
.end method
