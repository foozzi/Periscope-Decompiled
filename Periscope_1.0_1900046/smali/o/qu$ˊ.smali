.class final Lo/qu$ˊ;
.super Ljava/io/InputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/qu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "\u02ca"
.end annotation


# instance fields
.field final synthetic Wy:Lo/qu;

.field private gn:I

.field private position:I


# direct methods
.method private constructor <init>(Lo/qu;Lo/qu$if;)V
    .locals 2

    .line 448
    iput-object p1, p0, Lo/qu$ˊ;->Wy:Lo/qu;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 449
    iget v0, p2, Lo/qu$if;->position:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lo/qu;->ˊ(Lo/qu;I)I

    move-result v0

    iput v0, p0, Lo/qu$ˊ;->position:I

    .line 450
    iget v0, p2, Lo/qu$if;->length:I

    iput v0, p0, Lo/qu$ˊ;->gn:I

    .line 451
    return-void
.end method

.method synthetic constructor <init>(Lo/qu;Lo/qu$if;Lo/qv;)V
    .locals 0

    .line 444
    invoke-direct {p0, p1, p2}, Lo/qu$ˊ;-><init>(Lo/qu;Lo/qu$if;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4

    .line 474
    iget v0, p0, Lo/qu$ˊ;->gn:I

    if-nez v0, :cond_0

    .line 475
    const/4 v0, -0x1

    return v0

    .line 477
    :cond_0
    iget-object v0, p0, Lo/qu$ˊ;->Wy:Lo/qu;

    invoke-static {v0}, Lo/qu;->ˊ(Lo/qu;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget v1, p0, Lo/qu$ˊ;->position:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 478
    iget-object v0, p0, Lo/qu$ˊ;->Wy:Lo/qu;

    invoke-static {v0}, Lo/qu;->ˊ(Lo/qu;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    .line 479
    iget-object v0, p0, Lo/qu$ˊ;->Wy:Lo/qu;

    iget v1, p0, Lo/qu$ˊ;->position:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lo/qu;->ˊ(Lo/qu;I)I

    move-result v0

    iput v0, p0, Lo/qu$ˊ;->position:I

    .line 480
    iget v0, p0, Lo/qu$ˊ;->gn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/qu$ˊ;->gn:I

    .line 481
    return v3
.end method

.method public read([BII)I
    .locals 2

    .line 455
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lo/qu;->ˋ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 456
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 459
    :cond_1
    iget v0, p0, Lo/qu$ˊ;->gn:I

    if-lez v0, :cond_3

    .line 460
    iget v0, p0, Lo/qu$ˊ;->gn:I

    if-le p3, v0, :cond_2

    .line 461
    iget p3, p0, Lo/qu$ˊ;->gn:I

    .line 463
    :cond_2
    iget-object v0, p0, Lo/qu$ˊ;->Wy:Lo/qu;

    iget v1, p0, Lo/qu$ˊ;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Lo/qu;->ˊ(Lo/qu;I[BII)V

    .line 464
    iget-object v0, p0, Lo/qu$ˊ;->Wy:Lo/qu;

    iget v1, p0, Lo/qu$ˊ;->position:I

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lo/qu;->ˊ(Lo/qu;I)I

    move-result v0

    iput v0, p0, Lo/qu$ˊ;->position:I

    .line 465
    iget v0, p0, Lo/qu$ˊ;->gn:I

    sub-int/2addr v0, p3

    iput v0, p0, Lo/qu$ˊ;->gn:I

    .line 466
    return p3

    .line 468
    :cond_3
    const/4 v0, -0x1

    return v0
.end method
