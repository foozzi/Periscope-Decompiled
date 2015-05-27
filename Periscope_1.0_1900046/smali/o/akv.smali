.class public Lo/akv;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final bJY:I

.field private bKh:I

.field private bKk:J

.field private bKl:J

.field private bKn:I

.field private bKo:I

.field private bKp:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akv;->bKk:J

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akv;->bKl:J

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lo/akv;->bKo:I

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lo/akv;->bKp:I

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lo/akv;->bKh:I

    .line 20
    iput p1, p0, Lo/akv;->bJY:I

    .line 21
    iput p2, p0, Lo/akv;->bKn:I

    .line 22
    return-void
.end method

.method private ˈ(I[BI)[B
    .locals 4

    .line 151
    iget v0, p0, Lo/akv;->bJY:I

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v2, v0

    .line 152
    add-int/lit8 v0, p1, 0x1

    new-array v3, v0, [B

    .line 153
    const/4 v0, 0x0

    aput-byte v2, v3, v0

    .line 154
    const/4 v0, 0x1

    invoke-static {p2, p3, v3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    return-object v3
.end method

.method private ˊ(Lo/alc;III[B)[B
    .locals 11

    .line 59
    const/16 v0, 0x12

    new-array v4, v0, [B

    .line 60
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x3

    .line 63
    iget v0, p0, Lo/akv;->bKh:I

    invoke-virtual {p1}, Lo/alc;->Bq()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 65
    const/4 v6, 0x0

    goto :goto_0

    .line 67
    :cond_0
    iget v0, p0, Lo/akv;->bKp:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lo/akv;->bKo:I

    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 69
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p1}, Lo/alc;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/akv;->bKk:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lo/akv;->bKl:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 73
    const/4 v6, 0x2

    .line 76
    :cond_3
    :goto_0
    iget v0, p0, Lo/akv;->bJY:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_4

    .line 78
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    shl-int/lit8 v1, v6, 0x6

    iget v2, p0, Lo/akv;->bJY:I

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v0, 0x0

    aput-byte v1, v4, v0

    goto :goto_1

    .line 80
    :cond_4
    iget v0, p0, Lo/akv;->bJY:I

    const/16 v1, 0x140

    if-ge v0, v1, :cond_5

    .line 82
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    shl-int/lit8 v1, v6, 0x6

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    const/4 v0, 0x0

    aput-byte v1, v4, v0

    .line 83
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    iget v1, p0, Lo/akv;->bJY:I

    add-int/lit8 v1, v1, -0x40

    int-to-byte v1, v1

    const/4 v0, 0x1

    aput-byte v1, v4, v0

    goto :goto_1

    .line 87
    :cond_5
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    shl-int/lit8 v1, v6, 0x6

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    const/4 v0, 0x0

    aput-byte v1, v4, v0

    .line 88
    iget v0, p0, Lo/akv;->bJY:I

    add-int/lit8 v7, v0, -0x40

    .line 89
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v1, v7, 0x8

    int-to-byte v1, v1

    const/4 v0, 0x1

    aput-byte v1, v4, v0

    .line 90
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    int-to-byte v1, v7

    const/4 v0, 0x2

    aput-byte v1, v4, v0

    .line 93
    :goto_1
    invoke-virtual {p1}, Lo/alc;->getTime()J

    move-result-wide v7

    .line 94
    if-eqz v6, :cond_6

    .line 96
    iget-wide v0, p0, Lo/akv;->bKk:J

    sub-long/2addr v7, v0

    .line 99
    :cond_6
    iput p2, p0, Lo/akv;->bKp:I

    .line 100
    invoke-virtual {p1}, Lo/alc;->Bq()I

    move-result v0

    iput v0, p0, Lo/akv;->bKh:I

    .line 101
    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    iput v0, p0, Lo/akv;->bKo:I

    .line 102
    invoke-virtual {p1}, Lo/alc;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/akv;->bKk:J

    .line 103
    iput-wide v7, p0, Lo/akv;->bKl:J

    .line 105
    const/4 v9, 0x0

    .line 106
    const/4 v0, 0x3

    if-ge v6, v0, :cond_8

    .line 108
    const-wide/32 v0, 0xffffff

    cmp-long v0, v7, v0

    if-lez v0, :cond_7

    .line 109
    const/4 v9, 0x1

    .line 110
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v1, -0x1

    aput-byte v1, v4, v0

    .line 111
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v1, -0x1

    aput-byte v1, v4, v0

    .line 112
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v1, -0x1

    aput-byte v1, v4, v0

    goto :goto_2

    .line 114
    :cond_7
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    const/16 v1, 0x10

    shr-long v1, v7, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 115
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    const/16 v1, 0x8

    shr-long v1, v7, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 116
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    long-to-int v1, v7

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 120
    :cond_8
    :goto_2
    const/4 v0, 0x2

    if-ge v6, v0, :cond_9

    .line 122
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 123
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 124
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    int-to-byte v1, p2

    aput-byte v1, v4, v0

    .line 125
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 128
    :cond_9
    if-nez v6, :cond_a

    .line 130
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    iget v1, p0, Lo/akv;->bKh:I

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 131
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    iget v1, p0, Lo/akv;->bKh:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 132
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    iget v1, p0, Lo/akv;->bKh:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 133
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    iget v1, p0, Lo/akv;->bKh:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 136
    :cond_a
    if-eqz v9, :cond_b

    .line 138
    invoke-static {v7, v8, v4, v5}, Lo/akw;->ͺ(J[BI)V

    .line 139
    add-int/lit8 v5, v5, 0x4

    .line 143
    :cond_b
    add-int v0, v5, p3

    new-array v10, v0, [B

    .line 144
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v4, v0, v10, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    move-object/from16 v0, p5

    invoke-static {v0, p4, v10, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    return-object v10
.end method


# virtual methods
.method public ˊ(Lo/alc;Lo/ala;)Z
    .locals 11

    .line 31
    invoke-virtual {p1}, Lo/alc;->Br()Lo/akz;

    move-result-object v0

    iget-object v6, v0, Lo/akz;->buffer:[B

    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-virtual {p1}, Lo/alc;->Br()Lo/akz;

    move-result-object v0

    iget v8, v0, Lo/akz;->length:I

    .line 34
    :goto_0
    if-ge v7, v8, :cond_2

    .line 36
    sub-int v9, v8, v7

    .line 37
    iget v0, p0, Lo/akv;->bKn:I

    if-le v9, v0, :cond_0

    .line 39
    iget v9, p0, Lo/akv;->bKn:I

    .line 42
    :cond_0
    if-nez v7, :cond_1

    .line 44
    move-object v0, p0

    move-object v1, p1

    move v2, v8

    move v3, v9

    move v4, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lo/akv;->ˊ(Lo/alc;III[B)[B

    move-result-object v10

    goto :goto_1

    .line 49
    :cond_1
    invoke-direct {p0, v9, v6, v7}, Lo/akv;->ˈ(I[BI)[B

    move-result-object v10

    .line 51
    :goto_1
    array-length v0, v10

    const/4 v1, 0x0

    invoke-virtual {p2, v10, v1, v0}, Lo/ala;->יִ([BII)V

    .line 52
    add-int/2addr v7, v9

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public ᓷ(I)V
    .locals 0

    .line 26
    iput p1, p0, Lo/akv;->bKn:I

    .line 27
    return-void
.end method
