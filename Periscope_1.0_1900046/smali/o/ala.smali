.class public Lo/ala;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ala$if;,
        Lo/ala$ˊ;
    }
.end annotation


# instance fields
.field private bJH:Ljava/lang/String;

.field private bJI:I

.field private bKG:Lo/aky;

.field private bLe:Lo/ala$if;

.field private bLf:Ljava/net/Socket;

.field private bLg:Ljava/io/InputStream;

.field private bLh:Lo/ala$ˊ;

.field private bLi:Z

.field private bLj:Lo/aky;

.field private bqT:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ala;->bLi:Z

    .line 33
    new-instance v0, Lo/aky;

    invoke-direct {v0}, Lo/aky;-><init>()V

    iput-object v0, p0, Lo/ala;->bKG:Lo/aky;

    .line 34
    new-instance v0, Lo/aky;

    invoke-direct {v0}, Lo/aky;-><init>()V

    iput-object v0, p0, Lo/ala;->bLj:Lo/aky;

    .line 143
    return-void
.end method

.method static synthetic ˎ(Lo/ala;)Lo/aky;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/ala;->bLj:Lo/aky;

    return-object v0
.end method

.method static synthetic ˏ(Lo/ala;)Ljava/net/Socket;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/ala;->bLf:Ljava/net/Socket;

    return-object v0
.end method


# virtual methods
.method public AZ()J
    .locals 2

    .line 266
    iget-object v0, p0, Lo/ala;->bLh:Lo/ala$ˊ;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lo/ala;->bLh:Lo/ala$ˊ;

    invoke-virtual {v0}, Lo/ala$ˊ;->AZ()J

    move-result-wide v0

    return-wide v0

    .line 270
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public Ba()J
    .locals 2

    .line 274
    iget-object v0, p0, Lo/ala;->bLh:Lo/ala$ˊ;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lo/ala;->bLh:Lo/ala$ˊ;

    invoke-virtual {v0}, Lo/ala$ˊ;->Ba()J

    move-result-wide v0

    return-wide v0

    .line 278
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public Bb()Ljava/util/Date;
    .locals 1

    .line 282
    iget-object v0, p0, Lo/ala;->bLh:Lo/ala$ˊ;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lo/ala;->bLh:Lo/ala$ˊ;

    invoke-virtual {v0}, Lo/ala$ˊ;->Bb()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 9

    .line 179
    const v3, 0x8000

    .line 180
    const v0, 0x8000

    new-array v4, v0, [B

    .line 183
    :try_start_0
    iget-boolean v0, p0, Lo/ala;->bLi:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v5

    .line 194
    iget-object v0, p0, Lo/ala;->bJH:Ljava/lang/String;

    iget v1, p0, Lo/ala;->bJI:I

    invoke-virtual {v5, v0, v1}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v6, v0

    .line 195
    new-instance v7, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 196
    new-instance v0, Lo/alb;

    invoke-direct {v0, p0, v7}, Lo/alb;-><init>(Lo/ala;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v6, v0}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 204
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 205
    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 206
    iput-object v6, p0, Lo/ala;->bLf:Ljava/net/Socket;

    .line 207
    goto :goto_0

    .line 210
    :cond_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lo/ala;->bJH:Ljava/lang/String;

    iget v2, p0, Lo/ala;->bJI:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lo/ala;->bLf:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    goto :goto_1

    .line 212
    :catch_0
    move-exception v5

    .line 213
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    iget-object v0, p0, Lo/ala;->bLe:Lo/ala$if;

    invoke-interface {v0, p0}, Lo/ala$if;->ˋ(Lo/ala;)V

    .line 215
    return-void

    .line 218
    :goto_1
    new-instance v0, Lo/ala$ˊ;

    invoke-direct {v0, p0}, Lo/ala$ˊ;-><init>(Lo/ala;)V

    iput-object v0, p0, Lo/ala;->bLh:Lo/ala$ˊ;

    .line 219
    iget-object v0, p0, Lo/ala;->bLe:Lo/ala$if;

    invoke-interface {v0, p0}, Lo/ala$if;->ˊ(Lo/ala;)V

    .line 224
    const/16 v5, 0x32

    .line 225
    const/16 v6, 0xc8

    .line 228
    :try_start_1
    iget-object v0, p0, Lo/ala;->bLf:Ljava/net/Socket;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 229
    iget-object v0, p0, Lo/ala;->bLf:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lo/ala;->bLg:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 231
    :goto_2
    const/4 v7, 0x0

    .line 234
    :try_start_2
    iget-object v0, p0, Lo/ala;->bLg:Ljava/io/InputStream;

    const/4 v1, 0x0

    const v2, 0x8000

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 240
    goto :goto_3

    .line 236
    :catch_1
    move-exception v8

    .line 238
    const/4 v7, 0x0

    .line 239
    :try_start_3
    iget-object v0, p0, Lo/ala;->bLf:Ljava/net/Socket;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 241
    :goto_3
    if-lez v7, :cond_1

    .line 243
    iget-object v0, p0, Lo/ala;->bLf:Ljava/net/Socket;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 244
    iget-object v0, p0, Lo/ala;->bKG:Lo/aky;

    invoke-virtual {v0, v7}, Lo/aky;->ᓽ(I)Lo/akz;

    move-result-object v8

    .line 245
    invoke-virtual {v8, v4, v7}, Lo/akz;->ᴶ([BI)V

    .line 246
    iget-object v0, p0, Lo/ala;->bLe:Lo/ala$if;

    invoke-interface {v0, p0, v8}, Lo/ala$if;->ˊ(Lo/ala;Lo/akz;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 248
    :cond_1
    goto :goto_2

    .line 249
    :catch_2
    move-exception v7

    .line 250
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 253
    iget-object v0, p0, Lo/ala;->bLe:Lo/ala$if;

    invoke-interface {v0, p0}, Lo/ala$if;->ˋ(Lo/ala;)V

    .line 254
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 162
    :try_start_0
    iget-object v0, p0, Lo/ala;->bLh:Lo/ala$ˊ;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lo/ala;->bLh:Lo/ala$ˊ;

    invoke-virtual {v0}, Lo/ala$ˊ;->shutdown()V

    .line 166
    :cond_0
    iget-object v0, p0, Lo/ala;->bqT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 167
    iget-object v0, p0, Lo/ala;->bLf:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 170
    :goto_0
    iget-object v0, p0, Lo/ala;->bKG:Lo/aky;

    invoke-virtual {v0}, Lo/aky;->shutdown()V

    .line 171
    return-void
.end method

.method public ˊ(Ljava/lang/String;IZLo/ala$if;)V
    .locals 1

    .line 150
    iput-object p4, p0, Lo/ala;->bLe:Lo/ala$if;

    .line 151
    iput-object p1, p0, Lo/ala;->bJH:Ljava/lang/String;

    .line 152
    iput p2, p0, Lo/ala;->bJI:I

    .line 153
    iput-boolean p3, p0, Lo/ala;->bLi:Z

    .line 155
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lo/ala;->bqT:Ljava/lang/Thread;

    .line 156
    iget-object v0, p0, Lo/ala;->bqT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 157
    return-void
.end method

.method public ˊ(Lo/akz;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lo/ala;->bKG:Lo/aky;

    invoke-virtual {v0, p1}, Lo/aky;->ˋ(Lo/akz;)V

    .line 176
    return-void
.end method

.method public יִ([BII)V
    .locals 1

    .line 258
    iget-object v0, p0, Lo/ala;->bLh:Lo/ala$ˊ;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lo/ala;->bLh:Lo/ala$ˊ;

    invoke-virtual {v0, p1, p2, p3}, Lo/ala$ˊ;->יִ([BII)V

    .line 262
    :cond_0
    return-void
.end method
