.class public final Lo/ᐹ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᒑ;


# static fields
.field private static final tT:[B


# instance fields
.field private length:J

.field private final tF:Lo/ϒ;

.field private tU:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lo/ᐹ;->tT:[B

    return-void
.end method

.method public constructor <init>(Lo/ϒ;JJ)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lo/ᐹ;->tF:Lo/ϒ;

    .line 43
    iput-wide p2, p0, Lo/ᐹ;->tU:J

    .line 44
    iput-wide p4, p0, Lo/ᐹ;->length:J

    .line 45
    return-void
.end method


# virtual methods
.method public getPosition()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lo/ᐹ;->tU:J

    return-wide v0
.end method

.method public read([BII)I
    .locals 5

    .line 49
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lo/ᐹ;->tF:Lo/ϒ;

    invoke-interface {v0, p1, p2, p3}, Lo/ϒ;->read([BII)I

    move-result v4

    .line 53
    const/4 v0, -0x1

    if-ne v4, v0, :cond_1

    .line 54
    const/4 v0, -0x1

    return v0

    .line 56
    :cond_1
    iget-wide v0, p0, Lo/ᐹ;->tU:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᐹ;->tU:J

    .line 57
    return v4
.end method

.method public readFully([BII)V
    .locals 1

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lo/ᐹ;->ˊ([BIIZ)Z

    .line 86
    return-void
.end method

.method public ˊ([BIIZ)Z
    .locals 6

    .line 63
    move v4, p3

    .line 64
    :goto_0
    if-lez v4, :cond_3

    .line 65
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lo/ᐹ;->tF:Lo/ϒ;

    invoke-interface {v0, p1, p2, v4}, Lo/ϒ;->read([BII)I

    move-result v5

    .line 69
    const/4 v0, -0x1

    if-ne v5, v0, :cond_2

    .line 70
    if-eqz p4, :cond_1

    if-ne v4, p3, :cond_1

    .line 71
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 75
    :cond_2
    add-int/2addr p2, v5

    .line 76
    sub-int/2addr v4, v5

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-wide v0, p0, Lo/ᐹ;->tU:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᐹ;->tU:J

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public נ(I)V
    .locals 6

    .line 90
    move v4, p1

    .line 91
    :goto_0
    if-lez v4, :cond_2

    .line 92
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lo/ᐹ;->tF:Lo/ϒ;

    sget-object v1, Lo/ᐹ;->tT:[B

    sget-object v2, Lo/ᐹ;->tT:[B

    array-length v2, v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lo/ϒ;->read([BII)I

    move-result v5

    .line 96
    const/4 v0, -0x1

    if-ne v5, v0, :cond_1

    .line 97
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 99
    :cond_1
    sub-int/2addr v4, v5

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-wide v0, p0, Lo/ᐹ;->tU:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᐹ;->tU:J

    .line 102
    return-void
.end method
