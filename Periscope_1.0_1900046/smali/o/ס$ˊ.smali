.class final Lo/ס$ˊ;
.super Landroid/os/Handler;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ס;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "\u02ca"
.end annotation


# instance fields
.field private final AM:Lo/ס$ˋ;

.field private final AN:Lo/ס$if;

.field private final AO:I

.field private volatile AP:Ljava/lang/Thread;

.field final synthetic AQ:Lo/ס;


# direct methods
.method public constructor <init>(Lo/ס;Landroid/os/Looper;Lo/ס$ˋ;Lo/ס$if;I)V
    .locals 0

    .line 220
    iput-object p1, p0, Lo/ס$ˊ;->AQ:Lo/ס;

    .line 221
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 222
    iput-object p3, p0, Lo/ס$ˊ;->AM:Lo/ס$ˋ;

    .line 223
    iput-object p4, p0, Lo/ס$ˊ;->AN:Lo/ס$if;

    .line 224
    iput p5, p0, Lo/ס$ˊ;->AO:I

    .line 225
    return-void
.end method

.method private Ƴ()V
    .locals 2

    .line 286
    iget-object v0, p0, Lo/ס$ˊ;->AQ:Lo/ס;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ס;->ˊ(Lo/ס;Z)Z

    .line 287
    iget-object v0, p0, Lo/ס$ˊ;->AQ:Lo/ס;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ס;->ˊ(Lo/ס;Lo/ס$ˊ;)Lo/ס$ˊ;

    .line 288
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 270
    :cond_0
    invoke-direct {p0}, Lo/ס$ˊ;->Ƴ()V

    .line 271
    iget-object v0, p0, Lo/ס$ˊ;->AM:Lo/ס$ˋ;

    invoke-interface {v0}, Lo/ס$ˋ;->ก()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lo/ס$ˊ;->AN:Lo/ס$if;

    iget-object v1, p0, Lo/ס$ˊ;->AM:Lo/ס$ˋ;

    invoke-interface {v0, v1}, Lo/ס$if;->ˋ(Lo/ס$ˋ;)V

    .line 273
    return-void

    .line 275
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 277
    :sswitch_0
    iget-object v0, p0, Lo/ס$ˊ;->AN:Lo/ס$if;

    iget-object v1, p0, Lo/ס$ˊ;->AM:Lo/ס$ˋ;

    invoke-interface {v0, v1}, Lo/ס$if;->ˊ(Lo/ס$ˋ;)V

    .line 278
    goto :goto_0

    .line 280
    :sswitch_1
    iget-object v0, p0, Lo/ס$ˊ;->AN:Lo/ס$if;

    iget-object v1, p0, Lo/ס$ˊ;->AM:Lo/ס$ˋ;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lo/ס$if;->ˊ(Lo/ס$ˋ;Ljava/io/IOException;)V

    .line 283
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public quit()V
    .locals 1

    .line 228
    iget-object v0, p0, Lo/ס$ˊ;->AM:Lo/ס$ˋ;

    invoke-interface {v0}, Lo/ס$ˋ;->ঽ()V

    .line 229
    iget-object v0, p0, Lo/ס$ˊ;->AP:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lo/ס$ˊ;->AP:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 232
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 237
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lo/ס$ˊ;->AP:Ljava/lang/Thread;

    .line 238
    iget v0, p0, Lo/ס$ˊ;->AO:I

    if-lez v0, :cond_0

    .line 239
    iget v0, p0, Lo/ס$ˊ;->AO:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 241
    :cond_0
    iget-object v0, p0, Lo/ס$ˊ;->AM:Lo/ס$ˋ;

    invoke-interface {v0}, Lo/ס$ˋ;->ก()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lo/ס$ˊ;->AM:Lo/ס$ˋ;

    invoke-interface {v0}, Lo/ס$ˋ;->კ()V

    .line 244
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ס$ˊ;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    .line 262
    goto :goto_0

    .line 245
    :catch_0
    move-exception v2

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lo/ס$ˊ;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    goto :goto_0

    .line 247
    :catch_1
    move-exception v2

    .line 249
    iget-object v0, p0, Lo/ס$ˊ;->AM:Lo/ס$ˋ;

    invoke-interface {v0}, Lo/ס$ˋ;->ก()Z

    move-result v0

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ס$ˊ;->sendEmptyMessage(I)Z

    .line 262
    goto :goto_0

    .line 251
    :catch_2
    move-exception v2

    .line 253
    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception loading stream"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    new-instance v0, Lo/ס$ˎ;

    invoke-direct {v0, v2}, Lo/ס$ˎ;-><init>(Ljava/lang/Exception;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lo/ס$ˊ;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    goto :goto_0

    .line 255
    :catch_3
    move-exception v2

    .line 259
    const-string v0, "LoadTask"

    const-string v1, "Unexpected error loading stream"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lo/ס$ˊ;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 261
    throw v2

    .line 263
    :goto_0
    return-void
.end method
