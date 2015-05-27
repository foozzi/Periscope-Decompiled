.class public Lo/ﾏ;
.super Lo/ڹ;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﾏ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Lo/\u06b9;Landroid/os/Handler$Callback;"
    }
.end annotation


# instance fields
.field private rM:I

.field private rO:Z

.field private rl:J

.field private final rs:Lo/ڒ;

.field private final rt:Lo/ڋ;

.field private final ru:Lo/م;

.field private final zn:Lo/ｱ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\uff71<TT;>;"
        }
    .end annotation
.end field

.field private final zo:Lo/ﾏ$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\uff8f$if<TT;>;"
        }
    .end annotation
.end field

.field private final zp:Landroid/os/Handler;

.field private zq:J

.field private zr:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ڒ;Lo/ｱ;Lo/ﾏ$if;Landroid/os/Looper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0692;Lo/\uff71<TT;>;Lo/\uff8f$if<TT;>;Landroid/os/Looper;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lo/ڹ;-><init>()V

    .line 83
    invoke-static {p1}, Lo/ړ;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ڒ;

    iput-object v0, p0, Lo/ﾏ;->rs:Lo/ڒ;

    .line 84
    invoke-static {p2}, Lo/ړ;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ｱ;

    iput-object v0, p0, Lo/ﾏ;->zn:Lo/ｱ;

    .line 85
    invoke-static {p3}, Lo/ړ;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﾏ$if;

    iput-object v0, p0, Lo/ﾏ;->zo:Lo/ﾏ$if;

    .line 86
    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object v0, p0, Lo/ﾏ;->zp:Landroid/os/Handler;

    .line 88
    new-instance v0, Lo/م;

    invoke-direct {v0}, Lo/م;-><init>()V

    iput-object v0, p0, Lo/ﾏ;->ru:Lo/م;

    .line 89
    new-instance v0, Lo/ڋ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/ڋ;-><init>(I)V

    iput-object v0, p0, Lo/ﾏ;->rt:Lo/ڋ;

    .line 90
    return-void
.end method

.method private ˌ(J)V
    .locals 1

    .line 124
    iput-wide p1, p0, Lo/ﾏ;->rl:J

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ﾏ;->zr:Ljava/lang/Object;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﾏ;->rO:Z

    .line 127
    return-void
.end method

.method private ᕀ(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lo/ﾏ;->zp:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lo/ﾏ;->zp:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0, p1}, Lo/ﾏ;->ᵕ(Ljava/lang/Object;)V

    .line 197
    :goto_0
    return-void
.end method

.method private ᵕ(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lo/ﾏ;->zo:Lo/ﾏ$if;

    invoke-interface {v0, p1}, Lo/ﾏ$if;->ᵣ(Ljava/lang/Object;)V

    .line 212
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 202
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 204
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lo/ﾏ;->ᵕ(Ljava/lang/Object;)V

    .line 205
    const/4 v0, 0x1

    return v0

    .line 207
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected seekTo(J)V
    .locals 1

    .line 119
    iget-object v0, p0, Lo/ﾏ;->rs:Lo/ڒ;

    invoke-interface {v0, p1, p2}, Lo/ڒ;->ﹳ(J)V

    .line 120
    invoke-direct {p0, p1, p2}, Lo/ﾏ;->ˌ(J)V

    .line 121
    return-void
.end method

.method protected ɜ()V
    .locals 2

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ﾏ;->zr:Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lo/ﾏ;->rs:Lo/ڒ;

    iget v1, p0, Lo/ﾏ;->rM:I

    invoke-interface {v0, v1}, Lo/ڒ;->ג(I)V

    .line 164
    return-void
.end method

.method protected ˉ(J)I
    .locals 3

    .line 95
    :try_start_0
    iget-object v0, p0, Lo/ﾏ;->rs:Lo/ڒ;

    invoke-interface {v0, p1, p2}, Lo/ڒ;->ᐧ(J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 96
    if-nez v2, :cond_0

    .line 97
    const/4 v0, 0x0

    return v0

    .line 101
    :cond_0
    goto :goto_0

    .line 99
    :catch_0
    move-exception v2

    .line 100
    new-instance v0, Lo/ʡ;

    invoke-direct {v0, v2}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 102
    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v0, p0, Lo/ﾏ;->rs:Lo/ڒ;

    invoke-interface {v0}, Lo/ڒ;->getTrackCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 103
    iget-object v0, p0, Lo/ﾏ;->zn:Lo/ｱ;

    iget-object v1, p0, Lo/ﾏ;->rs:Lo/ڒ;

    invoke-interface {v1, v2}, Lo/ڒ;->ϊ(I)Lo/ڕ;

    move-result-object v1

    iget-object v1, v1, Lo/ڕ;->mimeType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/ｱ;->ᵢ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iput v2, p0, Lo/ﾏ;->rM:I

    .line 105
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method protected ˊ(JJ)V
    .locals 8

    .line 132
    iput-wide p1, p0, Lo/ﾏ;->rl:J

    .line 134
    :try_start_0
    iget-object v0, p0, Lo/ﾏ;->rs:Lo/ڒ;

    invoke-interface {v0, p1, p2}, Lo/ڒ;->ᐨ(J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v7

    .line 136
    new-instance v0, Lo/ʡ;

    invoke-direct {v0, v7}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 139
    :goto_0
    iget-boolean v0, p0, Lo/ﾏ;->rO:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/ﾏ;->zr:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 141
    :try_start_1
    iget-object v0, p0, Lo/ﾏ;->rs:Lo/ڒ;

    iget v1, p0, Lo/ﾏ;->rM:I

    move-wide v2, p1

    iget-object v4, p0, Lo/ﾏ;->ru:Lo/م;

    iget-object v5, p0, Lo/ﾏ;->rt:Lo/ڋ;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lo/ڒ;->ˊ(IJLo/م;Lo/ڋ;Z)I

    move-result v7

    .line 142
    const/4 v0, -0x3

    if-ne v7, v0, :cond_0

    .line 143
    iget-object v0, p0, Lo/ﾏ;->rt:Lo/ڋ;

    iget-wide v0, v0, Lo/ڋ;->sJ:J

    iput-wide v0, p0, Lo/ﾏ;->zq:J

    .line 144
    iget-object v0, p0, Lo/ﾏ;->zn:Lo/ｱ;

    iget-object v1, p0, Lo/ﾏ;->rt:Lo/ڋ;

    iget-object v1, v1, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lo/ﾏ;->rt:Lo/ڋ;

    iget v2, v2, Lo/ڋ;->size:I

    invoke-interface {v0, v1, v2}, Lo/ｱ;->ˏ([BI)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/ﾏ;->zr:Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lo/ﾏ;->rt:Lo/ڋ;

    iget-object v0, v0, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 146
    :cond_0
    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﾏ;->rO:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    :cond_1
    :goto_1
    goto :goto_2

    .line 149
    :catch_1
    move-exception v7

    .line 150
    new-instance v0, Lo/ʡ;

    invoke-direct {v0, v7}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 154
    :cond_2
    :goto_2
    iget-object v0, p0, Lo/ﾏ;->zr:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lo/ﾏ;->zq:J

    iget-wide v2, p0, Lo/ﾏ;->rl:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 155
    iget-object v0, p0, Lo/ﾏ;->zr:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lo/ﾏ;->ᕀ(Ljava/lang/Object;)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ﾏ;->zr:Ljava/lang/Object;

    .line 158
    :cond_3
    return-void
.end method

.method protected ˊ(JZ)V
    .locals 2

    .line 113
    iget-object v0, p0, Lo/ﾏ;->rs:Lo/ڒ;

    iget v1, p0, Lo/ﾏ;->rM:I

    invoke-interface {v0, v1, p1, p2}, Lo/ڒ;->ˏ(IJ)V

    .line 114
    invoke-direct {p0, p1, p2}, Lo/ﾏ;->ˌ(J)V

    .line 115
    return-void
.end method

.method protected ﮈ()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lo/ﾏ;->rO:Z

    return v0
.end method

.method protected ﺓ()Z
    .locals 1

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method protected ﻤ()J
    .locals 2

    .line 168
    iget-object v0, p0, Lo/ﾏ;->rs:Lo/ڒ;

    iget v1, p0, Lo/ﾏ;->rM:I

    invoke-interface {v0, v1}, Lo/ڒ;->ϊ(I)Lo/ڕ;

    move-result-object v0

    iget-wide v0, v0, Lo/ڕ;->re:J

    return-wide v0
.end method

.method protected ﻥ()J
    .locals 2

    .line 178
    const-wide/16 v0, -0x3

    return-wide v0
.end method

.method protected ｆ()J
    .locals 2

    .line 173
    iget-wide v0, p0, Lo/ﾏ;->rl:J

    return-wide v0
.end method
