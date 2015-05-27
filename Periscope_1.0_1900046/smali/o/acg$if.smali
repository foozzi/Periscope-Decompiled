.class Lo/acg$if;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/acg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field private volatile bf:Z

.field final synthetic bxG:Lo/acg;


# direct methods
.method public constructor <init>(Lo/acg;)V
    .locals 1

    .line 136
    iput-object p1, p0, Lo/acg$if;->bxG:Lo/acg;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/acg$if;->bf:Z

    .line 138
    return-void
.end method

.method private kill()V
    .locals 3

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/acg$if;->bf:Z

    .line 142
    move-object v1, p0

    monitor-enter v1

    .line 143
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 145
    :goto_0
    return-void
.end method

.method static synthetic ˊ(Lo/acg$if;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lo/acg$if;->kill()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 150
    const/4 v3, 0x0

    .line 151
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lo/acg$if;->bf:Z

    if-eqz v0, :cond_6

    .line 152
    const-wide/16 v4, 0x64

    .line 153
    if-nez v3, :cond_0

    .line 154
    iget-object v0, p0, Lo/acg$if;->bxG:Lo/acg;

    invoke-static {v0}, Lo/acg;->ˊ(Lo/acg;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/acb;

    move-object v3, v0

    .line 155
    iget-object v0, p0, Lo/acg$if;->bxG:Lo/acg;

    invoke-static {v0}, Lo/acg;->ˋ(Lo/acg;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/acg$if;->bxG:Lo/acg;

    invoke-static {v0}, Lo/acg;->ˊ(Lo/acg;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lo/acg$if;->bxG:Lo/acg;

    invoke-static {v0}, Lo/acg;->ˎ(Lo/acg;)Lo/ot;

    move-result-object v0

    sget-object v1, Lo/acf;->bxw:Lo/acf;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lo/acg$if;->bxG:Lo/acg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/acg;->ˊ(Lo/acg;Z)Z

    .line 160
    :cond_0
    iget-object v0, p0, Lo/acg$if;->bxG:Lo/acg;

    invoke-static {v0}, Lo/acg;->ˏ(Lo/acg;)Lo/aek$ˊ;

    move-result-object v0

    invoke-interface {v0}, Lo/aek$ˊ;->yn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    sget-object v0, Lo/acg$1;->bwW:[I

    iget-object v1, v3, Lo/acb;->bxq:Lo/anu;

    invoke-virtual {v1}, Lo/anu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 166
    :pswitch_0
    iget-object v0, v3, Lo/acb;->bxr:Lo/ant;

    invoke-virtual {v0}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/acg$if;->bxG:Lo/acg;

    invoke-static {v0}, Lo/acg;->ᐝ(Lo/acg;)Lo/aad;

    move-result-object v0

    iget-object v1, v3, Lo/acb;->bxr:Lo/ant;

    invoke-virtual {v1}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aad;->רּ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 167
    :goto_1
    if-eqz v6, :cond_3

    .line 168
    iget-object v0, p0, Lo/acg$if;->bxG:Lo/acg;

    invoke-static {v0, v3}, Lo/acg;->ˊ(Lo/acg;Lo/acb;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    iget-object v0, p0, Lo/acg$if;->bxG:Lo/acg;

    invoke-static {v0}, Lo/acg;->ˎ(Lo/acg;)Lo/ot;

    move-result-object v0

    iget-object v1, v3, Lo/acb;->bxr:Lo/ant;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 170
    const/4 v3, 0x0

    goto :goto_3

    .line 172
    :cond_3
    iget-object v0, v3, Lo/acb;->bxr:Lo/ant;

    invoke-virtual {v0}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 173
    const-string v0, "ReplayChatQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping blocked message from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lo/acb;->bxr:Lo/ant;

    invoke-virtual {v2}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v3, 0x0

    goto :goto_3

    .line 180
    :goto_2
    :pswitch_1
    const/4 v3, 0x0

    .line 181
    goto :goto_3

    .line 185
    :cond_4
    const-string v0, "ReplayChatQueue"

    const-string v1, "Player not ready, sleeping for longer."

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-wide/16 v4, 0x1f4

    .line 189
    :cond_5
    :goto_3
    move-object v6, p0

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    monitor-exit v6

    goto :goto_4

    :catchall_0
    move-exception v7

    monitor-exit v6

    :try_start_2
    throw v7

    .line 193
    :goto_4
    goto/16 :goto_0

    .line 194
    :cond_6
    const-string v0, "ReplayChatQueue"

    const-string v1, "ChatQueue received kill signal. Thread will no longer loop."

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    goto :goto_5

    .line 195
    :catch_0
    move-exception v3

    .line 196
    const-string v0, "ReplayChatQueue"

    const-string v1, "error"

    invoke-static {v0, v1, v3}, Lo/akk;->ᐝ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
