.class public Lo/aat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aaq$aux;
.implements Lo/akw$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aat$if;
    }
.end annotation


# instance fields
.field private final buJ:Ljava/lang/String;

.field private buK:Lo/aaq;

.field private buL:Lo/aaq$ᐝ;

.field private buM:Lo/akw;

.field private buN:Lo/aav;

.field private buO:Lo/aav;

.field private buP:Lo/aat$if;

.field private buQ:Ljava/util/Timer;

.field private buR:J

.field private buS:Z

.field private buT:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/aat$if;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aat;->buN:Lo/aav;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aat;->buO:Lo/aav;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aat;->buS:Z

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/aat;->buT:J

    .line 50
    iput-object p1, p0, Lo/aat;->buJ:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lo/aat;->buP:Lo/aat$if;

    .line 52
    return-void
.end method

.method private reconnect()V
    .locals 18

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aat;->buM:Lo/akw;

    if-eqz v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aat;->buM:Lo/akw;

    invoke-virtual {v0}, Lo/akw;->Bi()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    :try_start_0
    new-instance v8, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aat;->buJ:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 80
    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 81
    invoke-virtual {v8}, Ljava/net/URI;->getPort()I

    move-result v11

    .line 82
    invoke-virtual {v8}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v12

    .line 83
    const-string v0, "t="

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x2

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 88
    :cond_0
    invoke-virtual {v8}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 89
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 91
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 93
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 94
    if-gtz v14, :cond_2

    .line 96
    return-void

    .line 98
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v13, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 99
    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 101
    const/16 v0, 0x50

    if-ne v11, v0, :cond_3

    const-string v0, "rtmp"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    const/16 v11, 0x1bb

    .line 104
    const-string v9, "RTMPS"

    .line 105
    new-instance v0, Lo/akw;

    invoke-direct {v0}, Lo/akw;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/aat;->buM:Lo/akw;

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aat;->buM:Lo/akw;

    const-wide/32 v1, 0x2625a0

    invoke-virtual {v0, v1, v2}, Lo/akw;->৲(J)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aat;->buM:Lo/akw;

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v12

    move-object/from16 v7, p0

    const/16 v3, 0x1bb

    invoke-virtual/range {v0 .. v7}, Lo/akw;->ˊ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/akw$if;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    return-void

    .line 114
    :cond_3
    goto :goto_0

    .line 111
    :catch_0
    move-exception v8

    .line 113
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :cond_4
    :goto_0
    move-object/from16 v8, p0

    monitor-enter v8

    .line 123
    move-object/from16 v0, p0

    :try_start_2
    iget-boolean v0, v0, Lo/aat;->buS:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 125
    monitor-exit v8

    return-void

    .line 127
    :cond_5
    const/4 v0, 0x1

    move-object/from16 v1, p0

    :try_start_3
    iput-boolean v0, v1, Lo/aat;->buS:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v17

    monitor-exit v8

    throw v17

    .line 129
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aat;->buP:Lo/aat$if;

    invoke-interface {v0}, Lo/aat$if;->vL()V

    .line 130
    return-void
.end method

.method private vG()V
    .locals 3

    .line 67
    new-instance v0, Lo/akw;

    invoke-direct {v0}, Lo/akw;-><init>()V

    iput-object v0, p0, Lo/aat;->buM:Lo/akw;

    .line 68
    iget-object v0, p0, Lo/aat;->buM:Lo/akw;

    const-wide/32 v1, 0x2625a0

    invoke-virtual {v0, v1, v2}, Lo/akw;->৲(J)V

    .line 69
    iget-object v0, p0, Lo/aat;->buM:Lo/akw;

    iget-object v1, p0, Lo/aat;->buJ:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lo/akw;->ˊ(Ljava/lang/String;Lo/akw$if;)V

    .line 70
    return-void
.end method

.method private declared-synchronized vH()V
    .locals 3

    monitor-enter p0

    .line 225
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lo/aat;->buR:J

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/aat;->buT:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private vI()V
    .locals 6

    .line 231
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lo/aat;->buQ:Ljava/util/Timer;

    .line 232
    iget-object v0, p0, Lo/aat;->buQ:Ljava/util/Timer;

    new-instance v1, Lo/aau;

    invoke-direct {v1, p0}, Lo/aau;-><init>(Lo/aat;)V

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 240
    return-void
.end method

.method private vJ()V
    .locals 1

    .line 244
    iget-object v0, p0, Lo/aat;->buQ:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lo/aat;->buQ:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aat;->buQ:Ljava/util/Timer;

    .line 249
    :cond_0
    return-void
.end method

.method private vK()V
    .locals 9

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 254
    const/4 v6, 0x0

    .line 255
    move-object v7, p0

    monitor-enter v7

    .line 257
    :try_start_0
    iget-wide v0, p0, Lo/aat;->buR:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 259
    iget-wide v0, p0, Lo/aat;->buR:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x2328

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 261
    const-string v0, "RTMP"

    const-string v1, "Connect timeout"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/aat;->buR:J

    .line 263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/aat;->buT:J

    .line 264
    const/4 v6, 0x1

    goto :goto_0

    .line 267
    :cond_0
    iget-wide v0, p0, Lo/aat;->buT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 269
    iget-wide v0, p0, Lo/aat;->buT:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x2328

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 271
    const-string v0, "RTMP"

    const-string v1, "No data timeout"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v6, 0x1

    .line 273
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/aat;->buT:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_1
    :goto_0
    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v7

    throw v8

    .line 277
    :goto_1
    if-eqz v6, :cond_2

    .line 279
    iget-object v0, p0, Lo/aat;->buM:Lo/akw;

    invoke-virtual {v0}, Lo/akw;->shutdown()V

    .line 280
    invoke-direct {p0}, Lo/aat;->reconnect()V

    .line 282
    :cond_2
    return-void
.end method

.method static synthetic ˊ(Lo/aat;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/aat;->vK()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 181
    const-string v0, "RTMP"

    const-string v1, "Unexpected close: reconnect"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lo/aat;->reconnect()V

    .line 183
    return-void
.end method

.method public onShutdown()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lo/aat;->vJ()V

    .line 188
    return-void
.end method

.method public Ŀ(I)V
    .locals 3

    .line 134
    if-lez p1, :cond_0

    .line 136
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    .line 137
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 138
    iget-object v0, p0, Lo/aat;->buM:Lo/akw;

    invoke-virtual {v0}, Lo/akw;->getTarget()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 139
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 140
    iget-object v0, p0, Lo/aat;->buM:Lo/akw;

    const-string v1, "play"

    invoke-virtual {v0, v1, v2}, Lo/akw;->ˊ(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_0
    return-void
.end method

.method public ˊ(Lo/aaq;Lo/aaq$ᐝ;)V
    .locals 2

    .line 57
    iput-object p1, p0, Lo/aat;->buK:Lo/aaq;

    .line 58
    iput-object p2, p0, Lo/aat;->buL:Lo/aaq$ᐝ;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/aat;->buR:J

    .line 60
    invoke-direct {p0}, Lo/aat;->vI()V

    .line 62
    invoke-direct {p0}, Lo/aat;->vG()V

    .line 63
    return-void
.end method

.method public ˊ(Lo/alc;)Z
    .locals 5

    .line 149
    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 151
    invoke-virtual {p1}, Lo/alc;->Bu()[Ljava/lang/Object;

    move-result-object v2

    .line 152
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 153
    const-string v0, "onMetaData"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aat;->buO:Lo/aav;

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 156
    invoke-virtual {p0, v4}, Lo/aat;->ᐝ(Ljava/util/Map;)V

    .line 158
    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 160
    iget-object v0, p0, Lo/aat;->buO:Lo/aav;

    if-eqz v0, :cond_3

    .line 162
    invoke-direct {p0}, Lo/aat;->vH()V

    .line 163
    iget-object v0, p0, Lo/aat;->buO:Lo/aav;

    invoke-virtual {v0, p1}, Lo/aav;->ˋ(Lo/alc;)V

    .line 164
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_2
    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 168
    iget-object v0, p0, Lo/aat;->buN:Lo/aav;

    if-eqz v0, :cond_3

    .line 170
    invoke-direct {p0}, Lo/aat;->vH()V

    .line 171
    iget-object v0, p0, Lo/aat;->buN:Lo/aav;

    invoke-virtual {v0, p1}, Lo/aav;->ˋ(Lo/alc;)V

    .line 172
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public ᐝ(Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V"
        }
    .end annotation

    .line 192
    const-string v0, "trackinfo"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 193
    const/4 v9, 0x0

    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_2

    .line 195
    aget-object v0, v8, v9

    check-cast v0, Ljava/util/Map;

    move-object v10, v0

    .line 196
    const-string v0, "type"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 197
    const-string v0, "video"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "sprop-parameter-sets"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 200
    const-string v0, "width"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    move-object v13, v0

    .line 201
    const-string v0, "height"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    move-object v14, v0

    .line 202
    new-instance v0, Lo/aaw;

    invoke-virtual {v13}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-virtual {v14}, Ljava/lang/Double;->intValue()I

    move-result v4

    iget-object v5, p0, Lo/aat;->buP:Lo/aat$if;

    move v1, v9

    move-object v2, v12

    invoke-direct/range {v0 .. v5}, Lo/aaw;-><init>(ILjava/lang/String;IILo/aat$if;)V

    iput-object v0, p0, Lo/aat;->buO:Lo/aav;

    .line 203
    iget-object v0, p0, Lo/aat;->buO:Lo/aav;

    iget-object v1, p0, Lo/aat;->buM:Lo/akw;

    invoke-virtual {v0, v1}, Lo/aav;->ˊ(Lo/akw;)V

    .line 204
    goto :goto_1

    :cond_0
    const-string v0, "audio"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const-string v0, "config"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 207
    const-string v0, "audiochannels"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    move-object v13, v0

    .line 208
    const-string v0, "audiosamplerate"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    move-object v14, v0

    .line 209
    new-instance v0, Lo/aas;

    invoke-virtual {v13}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-virtual {v14}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-direct {v0, v9, v12, v1, v2}, Lo/aas;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lo/aat;->buN:Lo/aav;

    .line 210
    iget-object v0, p0, Lo/aat;->buN:Lo/aav;

    iget-object v1, p0, Lo/aat;->buM:Lo/akw;

    invoke-virtual {v0, v1}, Lo/aav;->ˊ(Lo/akw;)V

    .line 193
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 213
    :cond_2
    new-instance v0, Lo/ԅ;

    iget-object v1, p0, Lo/aat;->buO:Lo/aav;

    iget-object v2, p0, Lo/aat;->buK:Lo/aaq;

    invoke-virtual {v2}, Lo/aaq;->vD()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lo/aat;->buK:Lo/aaq;

    const/4 v2, 0x1

    const-wide/16 v3, 0x1388

    const/16 v7, 0x32

    invoke-direct/range {v0 .. v7}, Lo/ԅ;-><init>(Lo/ڒ;IJLandroid/os/Handler;Lo/ԅ$if;I)V

    move-object v9, v0

    .line 215
    new-instance v10, Lo/з;

    iget-object v0, p0, Lo/aat;->buN:Lo/aav;

    invoke-direct {v10, v0}, Lo/з;-><init>(Lo/ڒ;)V

    .line 217
    const/4 v0, 0x5

    new-array v11, v0, [Lo/ڹ;

    .line 218
    const/4 v0, 0x0

    aput-object v9, v11, v0

    .line 219
    const/4 v0, 0x1

    aput-object v10, v11, v0

    .line 220
    iget-object v0, p0, Lo/aat;->buL:Lo/aaq$ᐝ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v11}, Lo/aaq$ᐝ;->ˊ([[Ljava/lang/String;[Lo/ก;[Lo/ڹ;)V

    .line 221
    return-void
.end method
