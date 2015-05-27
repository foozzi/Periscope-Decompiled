.class public Lo/qu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/qu$ˋ;,
        Lo/qu$if;,
        Lo/qu$ˊ;
    }
.end annotation


# static fields
.field private static final Wr:Ljava/util/logging/Logger;


# instance fields
.field private final Ws:Ljava/io/RandomAccessFile;

.field Wt:I

.field private Wu:Lo/qu$if;

.field private Wv:Lo/qu$if;

.field private final buffer:[B

.field private elementCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lo/qu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/qu;->Wr:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lo/qu;->buffer:[B

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {p1}, Lo/qu;->ʻ(Ljava/io/File;)V

    .line 115
    :cond_0
    invoke-static {p1}, Lo/qu;->ʼ(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    .line 116
    invoke-direct {p0}, Lo/qu;->readHeader()V

    .line 117
    return-void
.end method

.method private cK()I
    .locals 2

    .line 337
    iget v0, p0, Lo/qu;->Wt:I

    invoke-virtual {p0}, Lo/qu;->cJ()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private readHeader()V
    .locals 6

    .line 155
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 156
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lo/qu;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 157
    iget-object v0, p0, Lo/qu;->buffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/qu;->ʽ([BI)I

    move-result v0

    iput v0, p0, Lo/qu;->Wt:I

    .line 158
    iget v0, p0, Lo/qu;->Wt:I

    int-to-long v0, v0

    iget-object v2, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 159
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File is truncated. Expected length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/qu;->Wt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lo/qu;->buffer:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lo/qu;->ʽ([BI)I

    move-result v0

    iput v0, p0, Lo/qu;->elementCount:I

    .line 163
    iget-object v0, p0, Lo/qu;->buffer:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lo/qu;->ʽ([BI)I

    move-result v4

    .line 164
    iget-object v0, p0, Lo/qu;->buffer:[B

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lo/qu;->ʽ([BI)I

    move-result v5

    .line 165
    invoke-direct {p0, v4}, Lo/qu;->⁔(I)Lo/qu$if;

    move-result-object v0

    iput-object v0, p0, Lo/qu;->Wu:Lo/qu$if;

    .line 166
    invoke-direct {p0, v5}, Lo/qu;->⁔(I)Lo/qu$if;

    move-result-object v0

    iput-object v0, p0, Lo/qu;->Wv:Lo/qu$if;

    .line 167
    return-void
.end method

.method private setLength(I)V
    .locals 3

    .line 397
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 398
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 399
    return-void
.end method

.method private static ʻ(Ljava/io/File;)V
    .locals 7

    .line 193
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-static {v3}, Lo/qu;->ʼ(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v4

    .line 196
    const-wide/16 v0, 0x1000

    :try_start_0
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 197
    const-wide/16 v0, 0x0

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 198
    const/16 v0, 0x10

    new-array v5, v0, [B

    .line 199
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v5, v0}, Lo/qu;->ˊ([B[I)V

    .line 200
    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 203
    goto :goto_0

    .line 202
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    throw v6

    .line 206
    :goto_0
    invoke-virtual {v3, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Rename failed!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x1000
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static ʼ(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .locals 2

    .line 213
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static ʽ([BI)I
    .locals 3

    .line 149
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private static ʾ([BII)V
    .locals 2

    .line 129
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 130
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 131
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 132
    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 133
    return-void
.end method

.method static synthetic ˊ(Lo/qu;I)I
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lo/qu;->丨(I)I

    move-result v0

    return v0
.end method

.method static synthetic ˊ(Lo/qu;)Ljava/io/RandomAccessFile;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method private static ˊ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(TT;Ljava/lang/String;)TT;"
        }
    .end annotation

    .line 437
    if-nez p0, :cond_0

    .line 438
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    return-object p0
.end method

.method private ˊ(I[BII)V
    .locals 4

    .line 230
    invoke-direct {p0, p1}, Lo/qu;->丨(I)I

    move-result p1

    .line 231
    add-int v0, p1, p4

    iget v1, p0, Lo/qu;->Wt:I

    if-gt v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 233
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    .line 237
    :cond_0
    iget v0, p0, Lo/qu;->Wt:I

    sub-int v3, v0, p1

    .line 238
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 239
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 240
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 241
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    add-int v1, p3, v3

    sub-int v2, p4, v3

    invoke-virtual {v0, p2, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 243
    :goto_0
    return-void
.end method

.method static synthetic ˊ(Lo/qu;I[BII)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lo/qu;->ˋ(I[BII)V

    return-void
.end method

.method private static varargs ˊ([B[I)V
    .locals 6

    .line 140
    const/4 v1, 0x0

    .line 141
    move-object v2, p1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 142
    invoke-static {p0, v1, v5}, Lo/qu;->ʾ([BII)V

    .line 143
    add-int/lit8 v1, v1, 0x4

    .line 141
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method static synthetic ˋ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-static {p0, p1}, Lo/qu;->ˊ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ˋ(I[BII)V
    .locals 4

    .line 253
    invoke-direct {p0, p1}, Lo/qu;->丨(I)I

    move-result p1

    .line 254
    add-int v0, p1, p4

    iget v1, p0, Lo/qu;->Wt:I

    if-gt v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 256
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_0

    .line 260
    :cond_0
    iget v0, p0, Lo/qu;->Wt:I

    sub-int v3, v0, p1

    .line 261
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 262
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 263
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 264
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    add-int v1, p3, v3

    sub-int v2, p4, v3

    invoke-virtual {v0, p2, v1, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 266
    :goto_0
    return-void
.end method

.method private ͺ(IIII)V
    .locals 3

    .line 176
    iget-object v0, p0, Lo/qu;->buffer:[B

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    invoke-static {v0, v1}, Lo/qu;->ˊ([B[I)V

    .line 177
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 178
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lo/qu;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 179
    return-void
.end method

.method private ⁔(I)Lo/qu$if;
    .locals 3

    .line 183
    if-nez p1, :cond_0

    .line 184
    sget-object v0, Lo/qu$if;->Wz:Lo/qu$if;

    return-object v0

    .line 186
    :cond_0
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 187
    new-instance v0, Lo/qu$if;

    iget-object v1, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lo/qu$if;-><init>(II)V

    return-object v0
.end method

.method private 丨(I)I
    .locals 2

    .line 218
    iget v0, p0, Lo/qu;->Wt:I

    if-ge p1, v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x10

    iget v1, p0, Lo/qu;->Wt:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private 氵(I)V
    .locals 13

    .line 351
    add-int/lit8 v6, p1, 0x4

    .line 352
    invoke-direct {p0}, Lo/qu;->cK()I

    move-result v7

    .line 353
    if-lt v7, v6, :cond_0

    .line 354
    return-void

    .line 358
    :cond_0
    iget v8, p0, Lo/qu;->Wt:I

    .line 362
    :cond_1
    add-int/2addr v7, v8

    .line 363
    shl-int/lit8 v9, v8, 0x1

    .line 364
    move v8, v9

    .line 365
    if-lt v7, v6, :cond_1

    .line 367
    invoke-direct {p0, v9}, Lo/qu;->setLength(I)V

    .line 370
    iget-object v0, p0, Lo/qu;->Wv:Lo/qu$if;

    iget v0, v0, Lo/qu$if;->position:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lo/qu;->Wv:Lo/qu$if;

    iget v1, v1, Lo/qu$if;->length:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lo/qu;->丨(I)I

    move-result v10

    .line 373
    iget-object v0, p0, Lo/qu;->Wu:Lo/qu$if;

    iget v0, v0, Lo/qu$if;->position:I

    if-ge v10, v0, :cond_2

    .line 374
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    .line 375
    iget v0, p0, Lo/qu;->Wt:I

    int-to-long v0, v0

    invoke-virtual {v11, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 376
    add-int/lit8 v12, v10, -0x4

    .line 377
    move-object v0, v11

    int-to-long v3, v12

    move-object v5, v11

    const-wide/16 v1, 0x10

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    int-to-long v2, v12

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 378
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Copied insufficient number of bytes!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 383
    :cond_2
    iget-object v0, p0, Lo/qu;->Wv:Lo/qu$if;

    iget v0, v0, Lo/qu$if;->position:I

    iget-object v1, p0, Lo/qu;->Wu:Lo/qu$if;

    iget v1, v1, Lo/qu$if;->position:I

    if-ge v0, v1, :cond_3

    .line 384
    iget v0, p0, Lo/qu;->Wt:I

    iget-object v1, p0, Lo/qu;->Wv:Lo/qu$if;

    iget v1, v1, Lo/qu$if;->position:I

    add-int/2addr v0, v1

    add-int/lit8 v11, v0, -0x10

    .line 385
    iget v0, p0, Lo/qu;->elementCount:I

    iget-object v1, p0, Lo/qu;->Wu:Lo/qu$if;

    iget v1, v1, Lo/qu$if;->position:I

    invoke-direct {p0, v9, v0, v1, v11}, Lo/qu;->ͺ(IIII)V

    .line 386
    new-instance v0, Lo/qu$if;

    iget-object v1, p0, Lo/qu;->Wv:Lo/qu$if;

    iget v1, v1, Lo/qu$if;->length:I

    invoke-direct {v0, v11, v1}, Lo/qu$if;-><init>(II)V

    iput-object v0, p0, Lo/qu;->Wv:Lo/qu$if;

    .line 387
    goto :goto_0

    .line 388
    :cond_3
    iget v0, p0, Lo/qu;->elementCount:I

    iget-object v1, p0, Lo/qu;->Wu:Lo/qu$if;

    iget v1, v1, Lo/qu$if;->position:I

    iget-object v2, p0, Lo/qu;->Wv:Lo/qu$if;

    iget v2, v2, Lo/qu$if;->position:I

    invoke-direct {p0, v9, v0, v1, v2}, Lo/qu;->ͺ(IIII)V

    .line 391
    :goto_0
    iput v9, p0, Lo/qu;->Wt:I

    .line 392
    return-void
.end method


# virtual methods
.method public cJ()I
    .locals 2

    .line 318
    iget v0, p0, Lo/qu;->elementCount:I

    if-nez v0, :cond_0

    .line 319
    const/16 v0, 0x10

    return v0

    .line 322
    :cond_0
    iget-object v0, p0, Lo/qu;->Wv:Lo/qu$if;

    iget v0, v0, Lo/qu$if;->position:I

    iget-object v1, p0, Lo/qu;->Wu:Lo/qu$if;

    iget v1, v1, Lo/qu$if;->position:I

    if-lt v0, v1, :cond_1

    .line 324
    iget-object v0, p0, Lo/qu;->Wv:Lo/qu$if;

    iget v0, v0, Lo/qu$if;->position:I

    iget-object v1, p0, Lo/qu;->Wu:Lo/qu$if;

    iget v1, v1, Lo/qu$if;->position:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lo/qu;->Wv:Lo/qu$if;

    iget v1, v1, Lo/qu$if;->length:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    return v0

    .line 329
    :cond_1
    iget-object v0, p0, Lo/qu;->Wv:Lo/qu$if;

    iget v0, v0, Lo/qu$if;->position:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lo/qu;->Wv:Lo/qu$if;

    iget v1, v1, Lo/qu$if;->length:I

    add-int/2addr v0, v1

    iget v1, p0, Lo/qu;->Wt:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lo/qu;->Wu:Lo/qu$if;

    iget v1, v1, Lo/qu$if;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 525
    :try_start_0
    iget-object v0, p0, Lo/qu;->Ws:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isEmpty()Z
    .locals 2

    monitor-enter p0

    .line 342
    :try_start_0
    iget v0, p0, Lo/qu;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    const-string v0, "fileLength="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/qu;->Wt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 541
    const-string v0, ", size="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/qu;->elementCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    const-string v0, ", first="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/qu;->Wu:Lo/qu$if;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 543
    const-string v0, ", last="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/qu;->Wv:Lo/qu$if;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 544
    const-string v0, ", element lengths=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :try_start_0
    new-instance v0, Lo/qv;

    invoke-direct {v0, p0, v3}, Lo/qv;-><init>(Lo/qu;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Lo/qu;->ˊ(Lo/qu$ˋ;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    goto :goto_0

    .line 559
    :catch_0
    move-exception v4

    .line 560
    sget-object v0, Lo/qu;->Wr:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "read error"

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 562
    :goto_0
    const-string v0, "]]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized ʿ([BII)V
    .locals 8

    monitor-enter p0

    .line 287
    const-string v0, "buffer"

    :try_start_0
    invoke-static {p1, v0}, Lo/qu;->ˊ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 292
    :cond_1
    invoke-direct {p0, p3}, Lo/qu;->氵(I)V

    .line 295
    invoke-virtual {p0}, Lo/qu;->isEmpty()Z

    move-result v4

    .line 296
    if-eqz v4, :cond_2

    const/16 v5, 0x10

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/qu;->Wv:Lo/qu$if;

    iget v0, v0, Lo/qu$if;->position:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lo/qu;->Wv:Lo/qu$if;

    iget v1, v1, Lo/qu$if;->length:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lo/qu;->丨(I)I

    move-result v5

    .line 297
    :goto_0
    new-instance v6, Lo/qu$if;

    invoke-direct {v6, v5, p3}, Lo/qu$if;-><init>(II)V

    .line 300
    iget-object v0, p0, Lo/qu;->buffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p3}, Lo/qu;->ʾ([BII)V

    .line 301
    iget v0, v6, Lo/qu$if;->position:I

    iget-object v1, p0, Lo/qu;->buffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lo/qu;->ˊ(I[BII)V

    .line 304
    iget v0, v6, Lo/qu$if;->position:I

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lo/qu;->ˊ(I[BII)V

    .line 307
    if-eqz v4, :cond_3

    iget v7, v6, Lo/qu$if;->position:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lo/qu;->Wu:Lo/qu$if;

    iget v7, v0, Lo/qu$if;->position:I

    .line 308
    :goto_1
    iget v0, p0, Lo/qu;->Wt:I

    iget v1, p0, Lo/qu;->elementCount:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v6, Lo/qu$if;->position:I

    invoke-direct {p0, v0, v1, v7, v2}, Lo/qu;->ͺ(IIII)V

    .line 309
    iput-object v6, p0, Lo/qu;->Wv:Lo/qu$if;

    .line 310
    iget v0, p0, Lo/qu;->elementCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/qu;->elementCount:I

    .line 311
    if-eqz v4, :cond_4

    .line 312
    iget-object v0, p0, Lo/qu;->Wv:Lo/qu$if;

    iput-object v0, p0, Lo/qu;->Wu:Lo/qu$if;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ˊ(Lo/qu$ˋ;)V
    .locals 5

    monitor-enter p0

    .line 423
    :try_start_0
    iget-object v0, p0, Lo/qu;->Wu:Lo/qu$if;

    iget v2, v0, Lo/qu$if;->position:I

    .line 424
    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lo/qu;->elementCount:I

    if-ge v3, v0, :cond_0

    .line 425
    invoke-direct {p0, v2}, Lo/qu;->⁔(I)Lo/qu$if;

    move-result-object v4

    .line 426
    new-instance v0, Lo/qu$ˊ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v4, v1}, Lo/qu$ˊ;-><init>(Lo/qu;Lo/qu$if;Lo/qv;)V

    iget v1, v4, Lo/qu$if;->length:I

    invoke-interface {p1, v0, v1}, Lo/qu$ˋ;->ˊ(Ljava/io/InputStream;I)V

    .line 427
    iget v0, v4, Lo/qu$if;->position:I

    add-int/lit8 v0, v0, 0x4

    iget v1, v4, Lo/qu$if;->length:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lo/qu;->丨(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ˍ([B)V
    .locals 2

    .line 274
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lo/qu;->ʿ([BII)V

    .line 275
    return-void
.end method

.method public ᒢ(II)Z
    .locals 2

    .line 533
    invoke-virtual {p0}, Lo/qu;->cJ()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
