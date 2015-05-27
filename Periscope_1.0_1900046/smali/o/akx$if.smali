.class Lo/akx$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/akx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field public bKV:Z

.field private bKW:Ljava/net/DatagramSocket;

.field final synthetic bKX:Lo/akx;

.field private bqT:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lo/akx;)V
    .locals 1

    .line 81
    iput-object p1, p0, Lo/akx$if;->bKX:Lo/akx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/akx$if;->bKV:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lo/akx$if;->bKW:Ljava/net/DatagramSocket;

    .line 82
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lo/akx$if;->bqT:Ljava/lang/Thread;

    .line 83
    iget-object v0, p0, Lo/akx$if;->bqT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-void
.end method

.method private ᐝ([BIJ)V
    .locals 6

    .line 97
    const-wide/16 v0, 0x3e8

    div-long v0, p3, v0

    const-wide v2, 0x83aa7e80L

    add-long v4, v0, v2

    .line 98
    invoke-static {v4, v5, p1, p2}, Lo/akw;->ͺ(J[BI)V

    .line 99
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v4

    sub-long/2addr p3, v0

    .line 100
    const-wide v0, 0x100000000L

    mul-long/2addr v0, p3

    const-wide/16 v2, 0x3e8

    div-long p3, v0, v2

    .line 101
    add-int/lit8 v0, p2, 0x4

    invoke-static {p3, p4, p1, v0}, Lo/akw;->ͺ(J[BI)V

    .line 102
    return-void
.end method

.method private ᗮ([BI)J
    .locals 12

    .line 88
    invoke-static {p1, p2}, Lo/akt;->ᒽ([BI)J

    move-result-wide v4

    .line 89
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lo/akt;->ᒽ([BI)J

    move-result-wide v6

    .line 90
    const-wide v0, 0x83aa7e80L

    sub-long v8, v4, v0

    .line 91
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v6

    const-wide v2, 0x100000000L

    div-long v10, v0, v2

    .line 92
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v8

    add-long/2addr v0, v10

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 28

    .line 110
    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/akx$if;->bKW:Ljava/net/DatagramSocket;

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akx$if;->bKW:Ljava/net/DatagramSocket;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 113
    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v0, "pool.ntp.org"

    const/16 v1, 0x7b

    invoke-direct {v4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 117
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 119
    const/16 v0, 0x30

    new-array v9, v0, [B

    .line 120
    const/16 v0, 0x1b

    const/4 v1, 0x0

    aput-byte v0, v9, v1

    .line 121
    move-object/from16 v0, p0

    const/16 v1, 0x28

    invoke-direct {v0, v9, v1, v5, v6}, Lo/akx$if;->ᐝ([BIJ)V

    .line 122
    new-instance v10, Ljava/net/DatagramPacket;

    array-length v0, v9

    invoke-direct {v10, v9, v0, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akx$if;->bKW:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v10}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 125
    new-instance v11, Ljava/net/DatagramPacket;

    array-length v0, v9

    invoke-direct {v11, v9, v0}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    const/4 v12, 0x0

    .line 129
    move-object/from16 v0, p0

    :try_start_1
    iget-object v0, v0, Lo/akx$if;->bKW:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v11}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    const/4 v12, 0x1

    .line 135
    goto :goto_1

    .line 132
    :catch_0
    move-exception v13

    .line 134
    const/4 v12, 0x0

    .line 137
    :goto_1
    if-eqz v12, :cond_1

    .line 139
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 140
    sub-long v0, v13, v7

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    add-long v15, v5, v0

    .line 142
    move-object/from16 v0, p0

    const/16 v1, 0x18

    invoke-direct {v0, v9, v1}, Lo/akx$if;->ᗮ([BI)J

    move-result-wide v17

    .line 143
    move-object/from16 v0, p0

    const/16 v1, 0x20

    invoke-direct {v0, v9, v1}, Lo/akx$if;->ᗮ([BI)J

    move-result-wide v19

    .line 144
    move-object/from16 v0, p0

    const/16 v1, 0x28

    invoke-direct {v0, v9, v1}, Lo/akx$if;->ᗮ([BI)J

    move-result-wide v21

    .line 146
    sub-long v0, v15, v5

    sub-long v2, v21, v19

    sub-long v23, v0, v2

    .line 147
    const-wide/16 v0, 0xfa

    cmp-long v0, v23, v0

    if-gez v0, :cond_0

    .line 149
    sub-long v0, v19, v17

    sub-long v2, v21, v15

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long v25, v0, v2

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akx$if;->bKX:Lo/akx;

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lo/akx;->ᐢ(J)V

    .line 151
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clock offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v2, v25

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " roundtrip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v2, v23

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msecs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akx$if;->bKX:Lo/akx;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/akx;->ˊ(Lo/akx;J)J

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akx$if;->bKW:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 154
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/akx$if;->bKW:Ljava/net/DatagramSocket;

    .line 155
    goto :goto_2

    .line 157
    :cond_0
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round-trip msecs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v2, v23

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akx$if;->bqT:Ljava/lang/Thread;

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    goto/16 :goto_0

    .line 168
    :goto_2
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/akx$if;->bKV:Z

    .line 169
    goto :goto_3

    .line 162
    :catch_1
    move-exception v4

    .line 164
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/akx$if;->bKV:Z

    .line 169
    goto :goto_3

    .line 168
    :catchall_0
    move-exception v27

    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/akx$if;->bKV:Z

    throw v27

    .line 170
    :goto_3
    return-void
.end method
