.class Lo/zc$if;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/zc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field private volatile bf:Z

.field private brd:Lo/za;

.field final synthetic bre:Lo/zc;


# direct methods
.method private constructor <init>(Lo/zc;)V
    .locals 1

    .line 87
    iput-object p1, p0, Lo/zc$if;->bre:Lo/zc;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/zc$if;->bf:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/zc;Lo/zc$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lo/zc$if;-><init>(Lo/zc;)V

    return-void
.end method

.method private reset()V
    .locals 0

    .line 125
    return-void
.end method

.method private ˊ(Lo/zd$ˊ;)V
    .locals 4

    .line 148
    new-instance v3, Lo/ano;

    iget-object v0, p1, Lo/zd$ˊ;->brf:Ljava/lang/String;

    invoke-direct {v3, v0}, Lo/ano;-><init>(Ljava/lang/String;)V

    .line 149
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lo/zc$if;->brd:Lo/za;

    invoke-static {v3}, Lo/anp;->ˊ(Lo/ano;)Lo/anp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/za;->ˊ(Lo/anp;)V

    .line 152
    const-string v0, "ChatMan"

    const-string v1, "close chatconn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lo/zc$if;->brd:Lo/za;

    invoke-virtual {v0}, Lo/za;->close()V

    .line 154
    return-void
.end method

.method private ˋ(Lo/zd$if;)V
    .locals 5

    .line 128
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dojoin accesstoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lo/zd$if;->brg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",room="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lo/zd$if;->brf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :try_start_0
    invoke-static {p1}, Lo/za;->ˊ(Lo/zd$if;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/za;

    iput-object v0, p0, Lo/zc$if;->brd:Lo/za;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 132
    :catch_0
    move-exception v3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open chatconn to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lo/zd$if;->bri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    const-string v0, "ChatMan"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 138
    :goto_0
    new-instance v3, Lo/anm;

    iget-object v0, p1, Lo/zd$if;->brg:Ljava/lang/String;

    invoke-direct {v3, v0}, Lo/anm;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lo/zc$if;->brd:Lo/za;

    invoke-static {v3}, Lo/anp;->ˊ(Lo/anm;)Lo/anp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/za;->ˊ(Lo/anp;)V

    .line 142
    new-instance v4, Lo/ann;

    iget-object v0, p1, Lo/zd$if;->brf:Ljava/lang/String;

    invoke-direct {v4, v0}, Lo/ann;-><init>(Ljava/lang/String;)V

    .line 143
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lo/zc$if;->brd:Lo/za;

    invoke-static {v4}, Lo/anp;->ˊ(Lo/ann;)Lo/anp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/za;->ˊ(Lo/anp;)V

    .line 145
    return-void
.end method

.method private ˎ(Lo/ant;)V
    .locals 4

    .line 157
    new-instance v3, Lo/anl;

    invoke-static {p1}, Lo/za;->ˊ(Lo/ant;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lo/anl;-><init>(Ljava/lang/String;)V

    .line 158
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lo/zc$if;->brd:Lo/za;

    invoke-static {v3}, Lo/anp;->ˊ(Lo/anl;)Lo/anp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/za;->ˊ(Lo/anp;)V

    .line 160
    return-void
.end method


# virtual methods
.method public kill()V
    .locals 1

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/zc$if;->bf:Z

    .line 119
    invoke-virtual {p0}, Lo/zc$if;->interrupt()V

    .line 120
    return-void
.end method

.method public run()V
    .locals 4

    .line 94
    :goto_0
    iget-boolean v0, p0, Lo/zc$if;->bf:Z

    if-eqz v0, :cond_2

    .line 96
    :try_start_0
    iget-object v0, p0, Lo/zc$if;->bre:Lo/zc;

    invoke-static {v0}, Lo/zc;->ˊ(Lo/zc;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zd;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 99
    instance-of v0, v2, Lo/zd$if;

    if-eqz v0, :cond_0

    .line 100
    move-object v0, v2

    :try_start_1
    check-cast v0, Lo/zd$if;

    invoke-direct {p0, v0}, Lo/zc$if;->ˋ(Lo/zd$if;)V

    goto :goto_1

    .line 101
    :cond_0
    instance-of v0, v2, Lo/zd$ˊ;

    if-eqz v0, :cond_1

    .line 102
    move-object v0, v2

    check-cast v0, Lo/zd$ˊ;

    invoke-direct {p0, v0}, Lo/zc$if;->ˊ(Lo/zd$ˊ;)V

    goto :goto_1

    .line 105
    :cond_1
    move-object v0, v2

    check-cast v0, Lo/zd$ˋ;

    iget-object v0, v0, Lo/zd$ˋ;->brj:Lo/ant;

    invoke-direct {p0, v0}, Lo/zc$if;->ˎ(Lo/ant;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :goto_1
    goto :goto_2

    .line 107
    :catch_0
    move-exception v3

    .line 108
    const-string v0, "ChatMan"

    const-string v1, "write io error"

    :try_start_2
    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    invoke-direct {p0}, Lo/zc$if;->reset()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    :goto_2
    goto :goto_0

    .line 111
    :catch_1
    move-exception v2

    .line 112
    const-string v0, "ChatMan"

    const-string v1, "chatman writer is interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    goto :goto_0

    .line 115
    :cond_2
    return-void
.end method
