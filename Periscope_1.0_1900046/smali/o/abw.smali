.class Lo/abw;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/abw$1;,
        Lo/abw$if;
    }
.end annotation


# instance fields
.field private volatile bf:Z

.field private final bny:Lo/ot;

.field private final bwX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/anu$\u02ca;Lo/abw$if;>;"
        }
    .end annotation
.end field

.field private final bwY:Ljava/util/concurrent/locks/Lock;

.field private final bwZ:Ljava/util/concurrent/locks/Condition;

.field private final bxa:Ljava/util/concurrent/locks/Condition;

.field private final bxb:Lo/aek$ˊ;

.field private bxc:Z

.field private bxd:Z


# direct methods
.method public constructor <init>(Lo/aek$ˊ;Lo/ot;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/abw;->bwX:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lo/abw;->bwY:Ljava/util/concurrent/locks/Lock;

    .line 32
    iget-object v0, p0, Lo/abw;->bwY:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lo/abw;->bwZ:Ljava/util/concurrent/locks/Condition;

    .line 33
    iget-object v0, p0, Lo/abw;->bwY:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lo/abw;->bxa:Ljava/util/concurrent/locks/Condition;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/abw;->bxd:Z

    .line 41
    iput-object p2, p0, Lo/abw;->bny:Lo/ot;

    .line 42
    iput-object p1, p0, Lo/abw;->bxb:Lo/aek$ˊ;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/abw;->bf:Z

    .line 44
    return-void
.end method

.method private await()V
    .locals 2

    .line 129
    iget-object v0, p0, Lo/abw;->bwY:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 131
    :try_start_0
    iget-object v0, p0, Lo/abw;->bxa:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v0, p0, Lo/abw;->bwY:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 134
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v1

    iget-object v0, p0, Lo/abw;->bwY:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 135
    :goto_0
    return-void
.end method

.method private ʸ(J)V
    .locals 3

    .line 140
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 141
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lo/abw;->bwY:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 145
    :try_start_0
    iget-object v0, p0, Lo/abw;->bwZ:Ljava/util/concurrent/locks/Condition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v0, p0, Lo/abw;->bwY:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 148
    goto :goto_0

    .line 147
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lo/abw;->bwY:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 149
    :goto_0
    return-void
.end method

.method private ʻ(Lo/ant;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lo/abw;->bny:Lo/ot;

    invoke-virtual {v0, p1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method private ˊ(Ljava/util/concurrent/locks/Condition;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lo/abw;->bwY:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 154
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Lo/abw;->bwY:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 157
    goto :goto_0

    .line 156
    :catchall_0
    move-exception v1

    iget-object v0, p0, Lo/abw;->bwY:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 158
    :goto_0
    return-void
.end method

.method private ᐝ(Lo/ant;)V
    .locals 10

    .line 89
    iget-object v0, p0, Lo/abw;->bxb:Lo/aek$ˊ;

    invoke-interface {v0}, Lo/aek$ˊ;->xT()Ljava/math/BigInteger;

    move-result-object v2

    .line 90
    invoke-virtual {p1}, Lo/ant;->Ci()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lo/akn;->ⁱ(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 93
    invoke-virtual {p0, v2}, Lo/abw;->ᵢ(Ljava/math/BigInteger;)J

    move-result-wide v0

    sub-long v6, v0, v4

    .line 94
    invoke-virtual {p0, v3}, Lo/abw;->ᵢ(Ljava/math/BigInteger;)J

    move-result-wide v0

    add-long v8, v0, v6

    .line 96
    iget-boolean v0, p0, Lo/abw;->bxd:Z

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lo/abw$1;->bwW:[I

    invoke-virtual {p1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v1

    invoke-virtual {v1}, Lo/anu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 101
    :sswitch_0
    invoke-direct {p0, p1}, Lo/abw;->ʻ(Lo/ant;)V

    .line 102
    goto :goto_1

    .line 106
    :goto_0
    goto :goto_1

    .line 109
    :cond_0
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 110
    invoke-direct {p0, p1}, Lo/abw;->ʻ(Lo/ant;)V

    goto :goto_1

    .line 111
    :cond_1
    iget-boolean v0, p0, Lo/abw;->bxc:Z

    if-eqz v0, :cond_3

    cmp-long v0, v4, v8

    if-ltz v0, :cond_3

    .line 114
    invoke-virtual {p1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v0

    sget-object v1, Lo/anu;->bOb:Lo/anu;

    if-ne v0, v1, :cond_2

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/abw;->bxd:Z

    .line 118
    :cond_2
    invoke-direct {p0, p1}, Lo/abw;->ʻ(Lo/ant;)V

    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {p0, p1}, Lo/abw;->ʽ(Lo/ant;)V

    .line 122
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public kill()V
    .locals 1

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/abw;->bf:Z

    .line 181
    iget-object v0, p0, Lo/abw;->bwZ:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0, v0}, Lo/abw;->ˊ(Ljava/util/concurrent/locks/Condition;)V

    .line 182
    iget-object v0, p0, Lo/abw;->bxa:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0, v0}, Lo/abw;->ˊ(Ljava/util/concurrent/locks/Condition;)V

    .line 183
    return-void
.end method

.method public run()V
    .locals 9

    .line 54
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lo/abw;->bf:Z

    if-eqz v0, :cond_4

    .line 55
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lo/abw;->bwX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    .line 58
    const-wide/16 v4, 0xc8

    .line 60
    iget-object v0, p0, Lo/abw;->bwX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/abw$if;

    move-object v7, v0

    .line 61
    iget-object v0, v7, Lo/abw$if;->bxe:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ant;

    move-object v8, v0

    .line 62
    if-nez v8, :cond_0

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 65
    :cond_0
    invoke-virtual {v7}, Lo/abw$if;->ready()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0, v8}, Lo/abw;->ᐝ(Lo/ant;)V

    .line 67
    invoke-virtual {v7}, Lo/abw$if;->wF()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_2

    .line 69
    :cond_1
    iget-object v0, v7, Lo/abw$if;->bxe:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v8}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v7}, Lo/abw$if;->wE()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 73
    :goto_2
    goto :goto_1

    .line 75
    :cond_2
    if-lt v2, v3, :cond_3

    .line 76
    invoke-direct {p0}, Lo/abw;->await()V

    goto :goto_3

    .line 79
    :cond_3
    invoke-direct {p0, v4, v5}, Lo/abw;->ʸ(J)V

    .line 81
    :goto_3
    goto/16 :goto_0

    .line 82
    :cond_4
    const-string v0, "ChatQueue"

    const-string v1, "ChatQueue received kill signal. Thread will no longer loop."

    invoke-static {v0, v1}, Lo/akk;->ـ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_4

    .line 83
    :catch_0
    move-exception v2

    .line 84
    const-string v0, "ChatQueue"

    const-string v1, "error"

    invoke-static {v0, v1, v2}, Lo/akk;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :goto_4
    return-void
.end method

.method public ʼ(Lo/ant;)V
    .locals 4

    .line 161
    invoke-virtual {p0, p1}, Lo/abw;->ʽ(Lo/ant;)V

    .line 162
    invoke-virtual {p1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v0

    iget-object v0, v0, Lo/anu;->bxf:Lo/anu$ˊ;

    iget-wide v0, v0, Lo/anu$ˊ;->WC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 163
    iget-object v0, p0, Lo/abw;->bwZ:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0, v0}, Lo/abw;->ˊ(Ljava/util/concurrent/locks/Condition;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lo/abw;->bxa:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0, v0}, Lo/abw;->ˊ(Ljava/util/concurrent/locks/Condition;)V

    .line 166
    return-void
.end method

.method public ʽ(Lo/ant;)V
    .locals 3

    .line 169
    invoke-virtual {p1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v0

    iget-object v1, v0, Lo/anu;->bxf:Lo/anu$ˊ;

    .line 170
    iget-object v0, p0, Lo/abw;->bwX:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/abw$if;

    move-object v2, v0

    .line 172
    if-nez v2, :cond_0

    .line 173
    new-instance v2, Lo/abw$if;

    invoke-direct {v2, v1}, Lo/abw$if;-><init>(Lo/anu$ˊ;)V

    .line 174
    iget-object v0, p0, Lo/abw;->bwX:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    iget-object v0, v2, Lo/abw$if;->bxe:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method ᓪ(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lo/abw;->bxc:Z

    .line 192
    return-void
.end method

.method public ᵢ(Ljava/math/BigInteger;)J
    .locals 3

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v1, 0x83aa7e80L

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method
