.class public final Lo/ᴐ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᴐ$ˊ;,
        Lo/ᴐ$if;,
        Lo/ᴐ$ˋ;
    }
.end annotation


# instance fields
.field private final appVersion:I

.field private final directory:Ljava/io/File;

.field private fd:Ljava/io/Writer;

.field final fe:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final ff:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
        }
    .end annotation
.end field

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<Ljava/lang/String;Lo/\u1d10$\u02ca;>;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ᴐ;->size:J

    .line 146
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ᴐ;->nextSequenceNumber:J

    .line 158
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lo/ᴐ;->fe:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 160
    new-instance v0, Lo/ᴛ;

    invoke-direct {v0, p0}, Lo/ᴛ;-><init>(Lo/ᴐ;)V

    iput-object v0, p0, Lo/ᴐ;->ff:Ljava/util/concurrent/Callable;

    .line 177
    iput-object p1, p0, Lo/ᴐ;->directory:Ljava/io/File;

    .line 178
    iput p2, p0, Lo/ᴐ;->appVersion:I

    .line 179
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lo/ᴐ;->journalFile:Ljava/io/File;

    .line 180
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lo/ᴐ;->journalFileTmp:Ljava/io/File;

    .line 181
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lo/ᴐ;->journalFileBackup:Ljava/io/File;

    .line 182
    iput p3, p0, Lo/ᴐ;->valueCount:I

    .line 183
    iput-wide p4, p0, Lo/ᴐ;->maxSize:J

    .line 184
    return-void
.end method

.method private checkNotClosed()V
    .locals 2

    .line 617
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_0
    return-void
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .line 569
    const/16 v2, 0x7d0

    .line 570
    iget v0, p0, Lo/ᴐ;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lo/ᴐ;->redundantOpCount:I

    iget-object v1, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processJournal()V
    .locals 7

    .line 325
    iget-object v0, p0, Lo/ᴐ;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lo/ᴐ;->ˊ(Ljava/io/File;)V

    .line 326
    iget-object v0, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴐ$ˊ;

    move-object v5, v0

    .line 328
    invoke-static {v5}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;)Lo/ᴐ$if;

    move-result-object v0

    if-nez v0, :cond_1

    .line 329
    const/4 v6, 0x0

    :goto_1
    iget v0, p0, Lo/ᴐ;->valueCount:I

    if-ge v6, v0, :cond_0

    .line 330
    iget-wide v0, p0, Lo/ᴐ;->size:J

    invoke-static {v5}, Lo/ᴐ$ˊ;->ˋ(Lo/ᴐ$ˊ;)[J

    move-result-object v2

    aget-wide v2, v2, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᴐ;->size:J

    .line 329
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    goto :goto_3

    .line 333
    :cond_1
    const/4 v0, 0x0

    invoke-static {v5, v0}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;Lo/ᴐ$if;)Lo/ᴐ$if;

    .line 334
    const/4 v6, 0x0

    :goto_2
    iget v0, p0, Lo/ᴐ;->valueCount:I

    if-ge v6, v0, :cond_2

    .line 335
    invoke-virtual {v5, v6}, Lo/ᴐ$ˊ;->ﻧ(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lo/ᴐ;->ˊ(Ljava/io/File;)V

    .line 336
    invoke-virtual {v5, v6}, Lo/ᴐ$ˊ;->ʺ(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lo/ᴐ;->ˊ(Ljava/io/File;)V

    .line 334
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 338
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 340
    :goto_3
    goto :goto_0

    .line 341
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 14

    .line 242
    new-instance v5, Lo/ᴺ;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lo/ᴐ;->journalFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v1, Lo/ᵑ;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v1}, Lo/ᴺ;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 244
    :try_start_0
    invoke-virtual {v5}, Lo/ᴺ;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-virtual {v5}, Lo/ᴺ;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-virtual {v5}, Lo/ᴺ;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 247
    invoke-virtual {v5}, Lo/ᴺ;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 248
    invoke-virtual {v5}, Lo/ᴺ;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 249
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/ᴐ;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/ᴐ;->valueCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal header: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_1
    const/4 v11, 0x0

    .line 261
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lo/ᴺ;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ᴐ;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    add-int/lit8 v11, v11, 0x1

    .line 265
    goto :goto_0

    .line 263
    :catch_0
    move-exception v12

    .line 264
    .line 267
    :try_start_2
    iget-object v0, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int v0, v11, v0

    iput v0, p0, Lo/ᴐ;->redundantOpCount:I

    .line 270
    invoke-virtual {v5}, Lo/ᴺ;->ᵩ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-direct {p0}, Lo/ᴐ;->rebuildJournal()V

    goto :goto_1

    .line 273
    :cond_2
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lo/ᴐ;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lo/ᵑ;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :goto_1
    invoke-static {v5}, Lo/ᵑ;->closeQuietly(Ljava/io/Closeable;)V

    .line 278
    goto :goto_2

    .line 277
    :catchall_0
    move-exception v13

    invoke-static {v5}, Lo/ᵑ;->closeQuietly(Ljava/io/Closeable;)V

    throw v13

    .line 279
    :goto_2
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9

    .line 282
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 283
    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 284
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 288
    const/16 v0, 0x20

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 290
    const/4 v0, -0x1

    if-ne v5, v0, :cond_1

    .line 291
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 292
    const-string v0, "REMOVE"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_2

    const-string v0, "REMOVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-void

    .line 297
    :cond_1
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 300
    :cond_2
    iget-object v0, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴐ$ˊ;

    move-object v7, v0

    .line 301
    if-nez v7, :cond_3

    .line 302
    new-instance v7, Lo/ᴐ$ˊ;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v6, v0}, Lo/ᴐ$ˊ;-><init>(Lo/ᴐ;Ljava/lang/String;Lo/ᴛ;)V

    .line 303
    iget-object v0, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_3
    const/4 v0, -0x1

    if-eq v5, v0, :cond_4

    const-string v0, "CLEAN"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_4

    const-string v0, "CLEAN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 308
    const/4 v0, 0x1

    invoke-static {v7, v0}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;Z)Z

    .line 309
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;Lo/ᴐ$if;)Lo/ᴐ$if;

    .line 310
    invoke-static {v7, v8}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;[Ljava/lang/String;)V

    .line 311
    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    if-ne v5, v0, :cond_5

    const-string v0, "DIRTY"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_5

    const-string v0, "DIRTY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 312
    new-instance v0, Lo/ᴐ$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v7, v1}, Lo/ᴐ$if;-><init>(Lo/ᴐ;Lo/ᴐ$ˊ;Lo/ᴛ;)V

    invoke-static {v7, v0}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;Lo/ᴐ$if;)Lo/ᴐ$if;

    goto :goto_0

    .line 313
    :cond_5
    const/4 v0, -0x1

    if-ne v5, v0, :cond_6

    const-string v0, "READ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_6

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 316
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :goto_0
    return-void
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 9

    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 352
    :cond_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lo/ᴐ;->journalFileTmp:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lo/ᵑ;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 355
    const-string v0, "libcore.io.DiskLruCache"

    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 356
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    const-string v0, "1"

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    iget v0, p0, Lo/ᴐ;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    iget v0, p0, Lo/ᴐ;->valueCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴐ$ˊ;

    move-object v7, v0

    .line 366
    invoke-static {v7}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;)Lo/ᴐ$if;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIRTY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Lo/ᴐ$ˊ;->ˎ(Lo/ᴐ$ˊ;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 369
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLEAN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Lo/ᴐ$ˊ;->ˎ(Lo/ᴐ$ˊ;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lo/ᴐ$ˊ;->ᵠ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    .line 373
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 374
    goto :goto_2

    .line 373
    :catchall_0
    move-exception v8

    :try_start_3
    invoke-virtual {v5}, Ljava/io/Writer;->close()V

    throw v8

    .line 376
    :goto_2
    iget-object v0, p0, Lo/ᴐ;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lo/ᴐ;->journalFile:Ljava/io/File;

    iget-object v1, p0, Lo/ᴐ;->journalFileBackup:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lo/ᴐ;->ˊ(Ljava/io/File;Ljava/io/File;Z)V

    .line 379
    :cond_3
    iget-object v0, p0, Lo/ᴐ;->journalFileTmp:Ljava/io/File;

    iget-object v1, p0, Lo/ᴐ;->journalFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/ᴐ;->ˊ(Ljava/io/File;Ljava/io/File;Z)V

    .line 380
    iget-object v0, p0, Lo/ᴐ;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 382
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lo/ᴐ;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lo/ᵑ;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 384
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private trimToSize()V
    .locals 5

    .line 645
    :goto_0
    iget-wide v0, p0, Lo/ᴐ;->size:J

    iget-wide v2, p0, Lo/ᴐ;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 646
    iget-object v0, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v4, v0

    .line 647
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lo/ᴐ;->remove(Ljava/lang/String;)Z

    .line 648
    goto :goto_0

    .line 649
    :cond_0
    return-void
.end method

.method static synthetic ʻ(Lo/ᴐ;)Ljava/io/File;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/ᴐ;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic ˊ(Lo/ᴐ;I)I
    .locals 0

    .line 85
    iput p1, p0, Lo/ᴐ;->redundantOpCount:I

    return p1
.end method

.method static synthetic ˊ(Lo/ᴐ;)Ljava/io/Writer;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    return-object v0
.end method

.method private declared-synchronized ˊ(Ljava/lang/String;J)Lo/ᴐ$if;
    .locals 4

    monitor-enter p0

    .line 445
    :try_start_0
    invoke-direct {p0}, Lo/ᴐ;->checkNotClosed()V

    .line 446
    iget-object v0, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴐ$ˊ;

    move-object v2, v0

    .line 447
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    invoke-static {v2}, Lo/ᴐ$ˊ;->ᐝ(Lo/ᴐ$ˊ;)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    .line 449
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 451
    :cond_1
    if-nez v2, :cond_2

    .line 452
    new-instance v2, Lo/ᴐ$ˊ;

    const/4 v0, 0x0

    invoke-direct {v2, p0, p1, v0}, Lo/ᴐ$ˊ;-><init>(Lo/ᴐ;Ljava/lang/String;Lo/ᴛ;)V

    .line 453
    iget-object v0, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 454
    :cond_2
    invoke-static {v2}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;)Lo/ᴐ$if;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 455
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 458
    :cond_3
    :goto_0
    new-instance v3, Lo/ᴐ$if;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v2, v0}, Lo/ᴐ$if;-><init>(Lo/ᴐ;Lo/ᴐ$ˊ;Lo/ᴛ;)V

    .line 459
    invoke-static {v2, v3}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;Lo/ᴐ$if;)Lo/ᴐ$if;

    .line 462
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const-string v1, "DIRTY"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 463
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 464
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 465
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 466
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static ˊ(Ljava/io/File;IIJ)Lo/ᴐ;
    .locals 9

    .line 197
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    if-gtz p2, :cond_1

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string v0, "journal.bkp"

    invoke-direct {v6, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    new-instance v7, Ljava/io/File;

    const-string v0, "journal"

    invoke-direct {v7, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 212
    :cond_2
    const/4 v0, 0x0

    invoke-static {v6, v7, v0}, Lo/ᴐ;->ˊ(Ljava/io/File;Ljava/io/File;Z)V

    .line 217
    :cond_3
    :goto_0
    new-instance v0, Lo/ᴐ;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lo/ᴐ;-><init>(Ljava/io/File;IIJ)V

    move-object v7, v0

    .line 218
    iget-object v0, v7, Lo/ᴐ;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    :try_start_0
    invoke-direct {v7}, Lo/ᴐ;->readJournal()V

    .line 221
    invoke-direct {v7}, Lo/ᴐ;->processJournal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    return-object v7

    .line 223
    :catch_0
    move-exception v8

    .line 224
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiskLruCache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is corrupt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v7}, Lo/ᴐ;->delete()V

    .line 235
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 236
    new-instance v0, Lo/ᴐ;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lo/ᴐ;-><init>(Ljava/io/File;IIJ)V

    move-object v7, v0

    .line 237
    invoke-direct {v7}, Lo/ᴐ;->rebuildJournal()V

    .line 238
    return-object v7
.end method

.method private static ˊ(Ljava/io/File;)V
    .locals 1

    .line 387
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 390
    :cond_0
    return-void
.end method

.method private static ˊ(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1

    .line 393
    if-eqz p2, :cond_0

    .line 394
    invoke-static {p1}, Lo/ᴐ;->ˊ(Ljava/io/File;)V

    .line 396
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 399
    :cond_1
    return-void
.end method

.method private declared-synchronized ˊ(Lo/ᴐ$if;Z)V
    .locals 12

    monitor-enter p0

    .line 502
    :try_start_0
    invoke-static {p1}, Lo/ᴐ$if;->ˊ(Lo/ᴐ$if;)Lo/ᴐ$ˊ;

    move-result-object v4

    .line 503
    invoke-static {v4}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;)Lo/ᴐ$if;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 504
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 508
    :cond_0
    if-eqz p2, :cond_3

    invoke-static {v4}, Lo/ᴐ$ˊ;->ˏ(Lo/ᴐ$ˊ;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 509
    const/4 v5, 0x0

    :goto_0
    iget v0, p0, Lo/ᴐ;->valueCount:I

    if-ge v5, v0, :cond_3

    .line 510
    invoke-static {p1}, Lo/ᴐ$if;->ˋ(Lo/ᴐ$if;)[Z

    move-result-object v0

    aget-boolean v0, v0, v5

    if-nez v0, :cond_1

    .line 511
    invoke-virtual {p1}, Lo/ᴐ$if;->abort()V

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Newly created entry didn\'t create value for index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_1
    invoke-virtual {v4, v5}, Lo/ᴐ$ˊ;->ʺ(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 515
    invoke-virtual {p1}, Lo/ᴐ$if;->abort()V

    .line 516
    monitor-exit p0

    return-void

    .line 509
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 521
    :cond_3
    const/4 v5, 0x0

    :goto_1
    iget v0, p0, Lo/ᴐ;->valueCount:I

    if-ge v5, v0, :cond_6

    .line 522
    invoke-virtual {v4, v5}, Lo/ᴐ$ˊ;->ʺ(I)Ljava/io/File;

    move-result-object v6

    .line 523
    if-eqz p2, :cond_4

    .line 524
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 525
    invoke-virtual {v4, v5}, Lo/ᴐ$ˊ;->ﻧ(I)Ljava/io/File;

    move-result-object v7

    .line 526
    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 527
    invoke-static {v4}, Lo/ᴐ$ˊ;->ˋ(Lo/ᴐ$ˊ;)[J

    move-result-object v0

    aget-wide v8, v0, v5

    .line 528
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 529
    invoke-static {v4}, Lo/ᴐ$ˊ;->ˋ(Lo/ᴐ$ˊ;)[J

    move-result-object v0

    aput-wide v10, v0, v5

    .line 530
    iget-wide v0, p0, Lo/ᴐ;->size:J

    sub-long/2addr v0, v8

    add-long/2addr v0, v10

    iput-wide v0, p0, Lo/ᴐ;->size:J

    .line 531
    goto :goto_2

    .line 533
    :cond_4
    invoke-static {v6}, Lo/ᴐ;->ˊ(Ljava/io/File;)V

    .line 521
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 537
    :cond_6
    iget v0, p0, Lo/ᴐ;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ᴐ;->redundantOpCount:I

    .line 538
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;Lo/ᴐ$if;)Lo/ᴐ$if;

    .line 539
    invoke-static {v4}, Lo/ᴐ$ˊ;->ˏ(Lo/ᴐ$ˊ;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_7

    .line 540
    const/4 v0, 0x1

    invoke-static {v4, v0}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;Z)Z

    .line 541
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const-string v1, "CLEAN"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 542
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 543
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    invoke-static {v4}, Lo/ᴐ$ˊ;->ˎ(Lo/ᴐ$ˊ;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 544
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    invoke-virtual {v4}, Lo/ᴐ$ˊ;->ᵠ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 545
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 547
    if-eqz p2, :cond_8

    .line 548
    iget-wide v0, p0, Lo/ᴐ;->nextSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lo/ᴐ;->nextSequenceNumber:J

    invoke-static {v4, v0, v1}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;J)J

    goto :goto_3

    .line 551
    :cond_7
    iget-object v0, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Lo/ᴐ$ˊ;->ˎ(Lo/ᴐ$ˊ;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const-string v1, "REMOVE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 553
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 554
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    invoke-static {v4}, Lo/ᴐ$ˊ;->ˎ(Lo/ᴐ$ˊ;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 555
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 557
    :cond_8
    :goto_3
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 559
    iget-wide v0, p0, Lo/ᴐ;->size:J

    iget-wide v2, p0, Lo/ᴐ;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lo/ᴐ;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 560
    :cond_9
    iget-object v0, p0, Lo/ᴐ;->fe:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lo/ᴐ;->ff:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :cond_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic ˊ(Lo/ᴐ;Lo/ᴐ$if;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lo/ᴐ;->ˊ(Lo/ᴐ$if;Z)V

    return-void
.end method

.method static synthetic ˋ(Lo/ᴐ;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lo/ᴐ;->trimToSize()V

    return-void
.end method

.method static synthetic ˎ(Lo/ᴐ;)Z
    .locals 1

    .line 85
    invoke-direct {p0}, Lo/ᴐ;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic ˏ(Lo/ᴐ;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lo/ᴐ;->rebuildJournal()V

    return-void
.end method

.method static synthetic ᐝ(Lo/ᴐ;)I
    .locals 1

    .line 85
    iget v0, p0, Lo/ᴐ;->valueCount:I

    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 631
    :try_start_0
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 632
    monitor-exit p0

    return-void

    .line 634
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴐ$ˊ;

    move-object v3, v0

    .line 635
    invoke-static {v3}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;)Lo/ᴐ$if;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 636
    invoke-static {v3}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;)Lo/ᴐ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᴐ$if;->abort()V

    :cond_1
    goto :goto_0

    .line 639
    :cond_2
    invoke-direct {p0}, Lo/ᴐ;->trimToSize()V

    .line 640
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public delete()V
    .locals 1

    .line 657
    invoke-virtual {p0}, Lo/ᴐ;->close()V

    .line 658
    iget-object v0, p0, Lo/ᴐ;->directory:Ljava/io/File;

    invoke-static {v0}, Lo/ᵑ;->deleteContents(Ljava/io/File;)V

    .line 659
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    .line 581
    :try_start_0
    invoke-direct {p0}, Lo/ᴐ;->checkNotClosed()V

    .line 582
    iget-object v0, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴐ$ˊ;

    move-object v4, v0

    .line 583
    if-eqz v4, :cond_0

    invoke-static {v4}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;)Lo/ᴐ$if;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 584
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 587
    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget v0, p0, Lo/ᴐ;->valueCount:I

    if-ge v5, v0, :cond_3

    .line 588
    invoke-virtual {v4, v5}, Lo/ᴐ$ˊ;->ﻧ(I)Ljava/io/File;

    move-result-object v6

    .line 589
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 590
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_2
    iget-wide v0, p0, Lo/ᴐ;->size:J

    invoke-static {v4}, Lo/ᴐ$ˊ;->ˋ(Lo/ᴐ$ˊ;)[J

    move-result-object v2

    aget-wide v2, v2, v5

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᴐ;->size:J

    .line 593
    invoke-static {v4}, Lo/ᴐ$ˊ;->ˋ(Lo/ᴐ$ˊ;)[J

    move-result-object v0

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v5

    .line 587
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 596
    :cond_3
    iget v0, p0, Lo/ᴐ;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ᴐ;->redundantOpCount:I

    .line 597
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const-string v1, "REMOVE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 598
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 599
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 600
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 602
    iget-object v0, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-direct {p0}, Lo/ᴐ;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 605
    iget-object v0, p0, Lo/ᴐ;->fe:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lo/ᴐ;->ff:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    :cond_4
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ʼ(Ljava/lang/String;)Lo/ᴐ$ˋ;
    .locals 13

    monitor-enter p0

    .line 407
    :try_start_0
    invoke-direct {p0}, Lo/ᴐ;->checkNotClosed()V

    .line 408
    iget-object v0, p0, Lo/ᴐ;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴐ$ˊ;

    move-object v8, v0

    .line 409
    if-nez v8, :cond_0

    .line 410
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 413
    :cond_0
    invoke-static {v8}, Lo/ᴐ$ˊ;->ˏ(Lo/ᴐ$ˊ;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 417
    :cond_1
    iget-object v9, v8, Lo/ᴐ$ˊ;->cleanFiles:[Ljava/io/File;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_3

    aget-object v12, v9, v11

    .line 419
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 420
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 417
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 424
    :cond_3
    iget v0, p0, Lo/ᴐ;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ᴐ;->redundantOpCount:I

    .line 425
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const-string v1, "READ"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 426
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 427
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 428
    iget-object v0, p0, Lo/ᴐ;->fd:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 429
    invoke-direct {p0}, Lo/ᴐ;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Lo/ᴐ;->fe:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lo/ᴐ;->ff:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 433
    :cond_4
    new-instance v0, Lo/ᴐ$ˋ;

    invoke-static {v8}, Lo/ᴐ$ˊ;->ᐝ(Lo/ᴐ$ˊ;)J

    move-result-wide v3

    iget-object v5, v8, Lo/ᴐ$ˊ;->cleanFiles:[Ljava/io/File;

    invoke-static {v8}, Lo/ᴐ$ˊ;->ˋ(Lo/ᴐ$ˊ;)[J

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lo/ᴐ$ˋ;-><init>(Lo/ᴐ;Ljava/lang/String;J[Ljava/io/File;[JLo/ᴛ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ʽ(Ljava/lang/String;)Lo/ᴐ$if;
    .locals 2

    .line 441
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lo/ᴐ;->ˊ(Ljava/lang/String;J)Lo/ᴐ$if;

    move-result-object v0

    return-object v0
.end method
