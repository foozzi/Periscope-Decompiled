.class Lo/ᴺ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private buf:[B

.field private end:I

.field private final fk:Ljava/nio/charset/Charset;

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_1
    if-gez p2, :cond_2

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    sget-object v0, Lo/ᵑ;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_3
    iput-object p1, p0, Lo/ᴺ;->in:Ljava/io/InputStream;

    .line 98
    iput-object p3, p0, Lo/ᴺ;->fk:Ljava/nio/charset/Charset;

    .line 99
    new-array v0, p2, [B

    iput-object v0, p0, Lo/ᴺ;->buf:[B

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    .line 72
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lo/ᴺ;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 73
    return-void
.end method

.method static synthetic ˊ(Lo/ᴺ;)Ljava/nio/charset/Charset;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/ᴺ;->fk:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private ḻ()V
    .locals 5

    .line 188
    iget-object v0, p0, Lo/ᴺ;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lo/ᴺ;->buf:[B

    iget-object v2, p0, Lo/ᴺ;->buf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 189
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 190
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lo/ᴺ;->pos:I

    .line 193
    iput v4, p0, Lo/ᴺ;->end:I

    .line 194
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 109
    iget-object v1, p0, Lo/ᴺ;->in:Ljava/io/InputStream;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lo/ᴺ;->buf:[B

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᴺ;->buf:[B

    .line 112
    iget-object v0, p0, Lo/ᴺ;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 115
    :goto_0
    return-void
.end method

.method public readLine()Ljava/lang/String;
    .locals 9

    .line 126
    iget-object v4, p0, Lo/ᴺ;->in:Ljava/io/InputStream;

    monitor-enter v4

    .line 127
    :try_start_0
    iget-object v0, p0, Lo/ᴺ;->buf:[B

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/io/IOException;

    const-string v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget v0, p0, Lo/ᴺ;->pos:I

    iget v1, p0, Lo/ᴺ;->end:I

    if-lt v0, v1, :cond_1

    .line 135
    invoke-direct {p0}, Lo/ᴺ;->ḻ()V

    .line 138
    :cond_1
    iget v5, p0, Lo/ᴺ;->pos:I

    :goto_0
    iget v0, p0, Lo/ᴺ;->end:I

    if-eq v5, v0, :cond_4

    .line 139
    iget-object v0, p0, Lo/ᴺ;->buf:[B

    aget-byte v0, v0, v5

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 140
    iget v0, p0, Lo/ᴺ;->pos:I

    if-eq v5, v0, :cond_2

    iget-object v0, p0, Lo/ᴺ;->buf:[B

    add-int/lit8 v1, v5, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    add-int/lit8 v6, v5, -0x1

    goto :goto_1

    :cond_2
    move v6, v5

    .line 141
    :goto_1
    new-instance v7, Ljava/lang/String;

    iget-object v0, p0, Lo/ᴺ;->buf:[B

    iget v1, p0, Lo/ᴺ;->pos:I

    iget v2, p0, Lo/ᴺ;->pos:I

    sub-int v2, v6, v2

    iget-object v3, p0, Lo/ᴺ;->fk:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 142
    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lo/ᴺ;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit v4

    return-object v7

    .line 138
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 148
    :cond_4
    :try_start_1
    new-instance v5, Lo/ᵈ;

    iget v0, p0, Lo/ᴺ;->end:I

    iget v1, p0, Lo/ᴺ;->pos:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v5, p0, v0}, Lo/ᵈ;-><init>(Lo/ᴺ;I)V

    .line 161
    :goto_2
    iget-object v0, p0, Lo/ᴺ;->buf:[B

    iget v1, p0, Lo/ᴺ;->pos:I

    iget v2, p0, Lo/ᴺ;->end:I

    iget v3, p0, Lo/ᴺ;->pos:I

    sub-int/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lo/ᴺ;->end:I

    .line 164
    invoke-direct {p0}, Lo/ᴺ;->ḻ()V

    .line 166
    iget v6, p0, Lo/ᴺ;->pos:I

    :goto_3
    iget v0, p0, Lo/ᴺ;->end:I

    if-eq v6, v0, :cond_7

    .line 167
    iget-object v0, p0, Lo/ᴺ;->buf:[B

    aget-byte v0, v0, v6

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 168
    iget v0, p0, Lo/ᴺ;->pos:I

    if-eq v6, v0, :cond_5

    .line 169
    iget-object v0, p0, Lo/ᴺ;->buf:[B

    iget v1, p0, Lo/ᴺ;->pos:I

    iget v2, p0, Lo/ᴺ;->pos:I

    sub-int v2, v6, v2

    invoke-virtual {v5, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 171
    :cond_5
    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lo/ᴺ;->pos:I

    .line 172
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v4

    return-object v0

    .line 166
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    goto :goto_2

    .line 176
    :catchall_0
    move-exception v8

    monitor-exit v4

    throw v8
.end method

.method public ᵩ()Z
    .locals 2

    .line 180
    iget v0, p0, Lo/ᴺ;->end:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
