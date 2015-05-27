.class public Lo/aku;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final bJY:I

.field private bJZ:I

.field private bKa:Z

.field private bKb:[B

.field private bKc:I

.field private bKd:I

.field private bKe:I

.field private bKf:Z

.field private bKg:Lo/alc;

.field private bKh:I

.field private bKi:I

.field private bKj:I

.field private bKk:J

.field private bKl:J

.field private bKm:Lo/ald;


# direct methods
.method public constructor <init>(IILo/ald;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lo/aku;->bKb:[B

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lo/aku;->bKc:I

    .line 31
    iput-object p3, p0, Lo/aku;->bKm:Lo/ald;

    .line 32
    iput p1, p0, Lo/aku;->bJY:I

    .line 33
    iput p2, p0, Lo/aku;->bJZ:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aku;->bKa:Z

    .line 35
    invoke-direct {p0}, Lo/aku;->Bg()V

    .line 36
    return-void
.end method

.method private Bg()V
    .locals 1

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lo/aku;->bKc:I

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lo/aku;->bKe:I

    .line 172
    return-void
.end method


# virtual methods
.method public Be()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lo/aku;->bKa:Z

    return v0
.end method

.method public Bf()I
    .locals 3

    .line 49
    iget v0, p0, Lo/aku;->bKj:I

    iget v1, p0, Lo/aku;->bKe:I

    sub-int v2, v0, v1

    .line 50
    iget v0, p0, Lo/aku;->bJZ:I

    if-le v2, v0, :cond_0

    .line 52
    iget v2, p0, Lo/aku;->bJZ:I

    .line 54
    :cond_0
    iget v0, p0, Lo/aku;->bKc:I

    iget v1, p0, Lo/aku;->bKd:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public ᐝ([BIII)Lo/alc;
    .locals 4

    .line 59
    const/4 v0, 0x3

    if-ge p4, v0, :cond_0

    .line 61
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lo/aku;->bKl:J

    .line 62
    add-int/lit8 p2, p2, 0x3

    .line 65
    :cond_0
    const/4 v0, 0x2

    if-ge p4, v0, :cond_1

    .line 67
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lo/aku;->bKj:I

    .line 68
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    iput v0, p0, Lo/aku;->bKi:I

    .line 69
    add-int/lit8 p2, p2, 0x4

    .line 72
    :cond_1
    if-nez p4, :cond_2

    .line 75
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lo/aku;->bKh:I

    .line 76
    add-int/lit8 p2, p2, 0x4

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aku;->bKf:Z

    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aku;->bKf:Z

    .line 84
    :goto_0
    iget-wide v0, p0, Lo/aku;->bKl:J

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 86
    const/4 v0, 0x4

    iput v0, p0, Lo/aku;->bKc:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lo/aku;->bKd:I

    .line 90
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aku;->bKa:Z

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public ᓶ(I)V
    .locals 0

    .line 40
    iput p1, p0, Lo/aku;->bJZ:I

    .line 41
    return-void
.end method

.method public ᵕ([BII)Lo/alc;
    .locals 8

    .line 96
    iget v0, p0, Lo/aku;->bKj:I

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aku;->bKa:Z

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    iget v0, p0, Lo/aku;->bKd:I

    iget v1, p0, Lo/aku;->bKc:I

    if-ge v0, v1, :cond_2

    .line 104
    iget v0, p0, Lo/aku;->bKc:I

    iget v1, p0, Lo/aku;->bKd:I

    sub-int v5, v0, v1

    .line 105
    if-ge p3, v5, :cond_1

    .line 107
    move v5, p3

    .line 109
    :cond_1
    iget-object v0, p0, Lo/aku;->bKb:[B

    iget v1, p0, Lo/aku;->bKd:I

    invoke-static {p1, p2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget v0, p0, Lo/aku;->bKd:I

    add-int/2addr v0, v5

    iput v0, p0, Lo/aku;->bKd:I

    .line 111
    add-int/2addr p2, v5

    .line 112
    sub-int/2addr p3, v5

    .line 115
    :cond_2
    iget v0, p0, Lo/aku;->bKc:I

    iget v1, p0, Lo/aku;->bKd:I

    if-ne v0, v1, :cond_8

    if-lez p3, :cond_8

    .line 117
    iget-object v0, p0, Lo/aku;->bKg:Lo/alc;

    if-nez v0, :cond_3

    .line 119
    iget-object v0, p0, Lo/aku;->bKm:Lo/ald;

    iget v1, p0, Lo/aku;->bKi:I

    iget v2, p0, Lo/aku;->bJY:I

    iget v3, p0, Lo/aku;->bKh:I

    iget v4, p0, Lo/aku;->bKj:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/ald;->ᵔ(IIII)Lo/alc;

    move-result-object v0

    iput-object v0, p0, Lo/aku;->bKg:Lo/alc;

    .line 120
    iget-object v0, p0, Lo/aku;->bKg:Lo/alc;

    invoke-virtual {v0}, Lo/alc;->Br()Lo/akz;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lo/akz;->length:I

    .line 122
    :cond_3
    iget-object v0, p0, Lo/aku;->bKg:Lo/alc;

    invoke-virtual {v0}, Lo/alc;->Br()Lo/akz;

    move-result-object v5

    .line 123
    iget v0, p0, Lo/aku;->bKj:I

    iget v1, v5, Lo/akz;->length:I

    sub-int v6, v0, v1

    .line 124
    if-ge p3, v6, :cond_4

    .line 126
    move v6, p3

    .line 128
    :cond_4
    invoke-virtual {v5, p1, p2, v6}, Lo/akz;->ᵣ([BII)V

    .line 129
    iget v0, p0, Lo/aku;->bKe:I

    add-int/2addr v0, v6

    iput v0, p0, Lo/aku;->bKe:I

    .line 130
    iget v0, v5, Lo/akz;->length:I

    iget v1, p0, Lo/aku;->bKj:I

    if-ne v0, v1, :cond_7

    .line 132
    iget v0, p0, Lo/aku;->bKc:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 134
    iget-object v0, p0, Lo/aku;->bKb:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/akt;->ᒽ([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lo/aku;->bKl:J

    .line 136
    :cond_5
    iget-boolean v0, p0, Lo/aku;->bKf:Z

    if-eqz v0, :cond_6

    .line 138
    iget-wide v0, p0, Lo/aku;->bKk:J

    iget-wide v2, p0, Lo/aku;->bKl:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/aku;->bKk:J

    goto :goto_0

    .line 142
    :cond_6
    iget-wide v0, p0, Lo/aku;->bKl:J

    iput-wide v0, p0, Lo/aku;->bKk:J

    .line 145
    :goto_0
    iget-object v0, p0, Lo/aku;->bKg:Lo/alc;

    iget-wide v1, p0, Lo/aku;->bKk:J

    invoke-virtual {v0, v1, v2}, Lo/alc;->setTime(J)V

    .line 146
    iget-object v0, p0, Lo/aku;->bKg:Lo/alc;

    invoke-virtual {v0}, Lo/alc;->Bt()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aku;->bKa:Z

    .line 148
    invoke-direct {p0}, Lo/aku;->Bg()V

    .line 150
    iget-object v7, p0, Lo/aku;->bKg:Lo/alc;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aku;->bKg:Lo/alc;

    .line 152
    return-object v7

    .line 156
    :cond_7
    iget v0, p0, Lo/aku;->bJZ:I

    if-ne v6, v0, :cond_8

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lo/aku;->bKd:I

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aku;->bKa:Z

    .line 164
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method
