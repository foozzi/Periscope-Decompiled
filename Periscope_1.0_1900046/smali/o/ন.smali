.class public final Lo/ন;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Bo:I

.field private Bp:I

.field public fw:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/ন;->fw:[B

    .line 40
    return-void
.end method

.method private readUnsignedByte()I
    .locals 5

    .line 158
    iget v0, p0, Lo/ন;->Bp:I

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lo/ন;->fw:[B

    iget v1, p0, Lo/ন;->Bo:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lo/ন;->Bp:I

    shl-int/2addr v0, v1

    iget-object v1, p0, Lo/ন;->fw:[B

    iget v2, p0, Lo/ন;->Bo:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lo/ন;->Bp:I

    rsub-int/lit8 v2, v2, 0x8

    ushr-int/2addr v1, v2

    or-int v4, v0, v1

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lo/ন;->fw:[B

    iget v1, p0, Lo/ন;->Bo:I

    aget-byte v4, v0, v1

    .line 164
    :goto_0
    iget v0, p0, Lo/ন;->Bo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ন;->Bo:I

    .line 165
    and-int/lit16 v0, v4, 0xff

    return v0
.end method

.method private ɿ(I)I
    .locals 2

    .line 169
    iget-object v0, p0, Lo/ন;->fw:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private λ()I
    .locals 3

    .line 173
    const/4 v2, 0x0

    .line 174
    :goto_0
    invoke-virtual {p0}, Lo/ন;->ʎ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    if-lez v2, :cond_1

    invoke-virtual {p0, v2}, Lo/ন;->ɾ(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public setPosition(I)V
    .locals 2

    .line 68
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lo/ন;->Bo:I

    .line 69
    iget v0, p0, Lo/ন;->Bo:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lo/ন;->Bp:I

    .line 70
    return-void
.end method

.method public ɪ(I)V
    .locals 2

    .line 78
    iget v0, p0, Lo/ন;->Bo:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lo/ন;->Bo:I

    .line 79
    iget v0, p0, Lo/ন;->Bp:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lo/ন;->Bp:I

    .line 80
    iget v0, p0, Lo/ন;->Bp:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 81
    iget v0, p0, Lo/ন;->Bo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ন;->Bo:I

    .line 82
    iget v0, p0, Lo/ন;->Bp:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lo/ন;->Bp:I

    .line 84
    :cond_0
    return-void
.end method

.method public ɾ(I)I
    .locals 6

    .line 102
    if-nez p1, :cond_0

    .line 103
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_0
    const/4 v3, 0x0

    .line 109
    :goto_0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    .line 110
    add-int/lit8 p1, p1, -0x8

    .line 111
    invoke-direct {p0}, Lo/ন;->readUnsignedByte()I

    move-result v0

    shl-int/2addr v0, p1

    or-int/2addr v3, v0

    goto :goto_0

    .line 114
    :cond_1
    if-lez p1, :cond_4

    .line 115
    iget v0, p0, Lo/ন;->Bp:I

    add-int v4, v0, p1

    .line 116
    rsub-int/lit8 v0, p1, 0x8

    const/16 v1, 0xff

    shr-int v0, v1, v0

    int-to-byte v5, v0

    .line 118
    const/16 v0, 0x8

    if-le v4, v0, :cond_2

    .line 120
    iget v0, p0, Lo/ন;->Bo:I

    invoke-direct {p0, v0}, Lo/ন;->ɿ(I)I

    move-result v0

    add-int/lit8 v1, v4, -0x8

    shl-int/2addr v0, v1

    iget v1, p0, Lo/ন;->Bo:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lo/ন;->ɿ(I)I

    move-result v1

    rsub-int/lit8 v2, v4, 0x10

    shr-int/2addr v1, v2

    or-int/2addr v0, v1

    and-int/2addr v0, v5

    or-int/2addr v3, v0

    .line 122
    iget v0, p0, Lo/ন;->Bo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ন;->Bo:I

    goto :goto_1

    .line 125
    :cond_2
    iget v0, p0, Lo/ন;->Bo:I

    invoke-direct {p0, v0}, Lo/ন;->ɿ(I)I

    move-result v0

    rsub-int/lit8 v1, v4, 0x8

    shr-int/2addr v0, v1

    and-int/2addr v0, v5

    or-int/2addr v3, v0

    .line 126
    const/16 v0, 0x8

    if-ne v4, v0, :cond_3

    .line 127
    iget v0, p0, Lo/ন;->Bo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ন;->Bo:I

    .line 131
    :cond_3
    :goto_1
    rem-int/lit8 v0, v4, 0x8

    iput v0, p0, Lo/ন;->Bp:I

    .line 134
    :cond_4
    return v3
.end method

.method public ʎ()Z
    .locals 2

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ন;->ɾ(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ʝ()I
    .locals 1

    .line 143
    invoke-direct {p0}, Lo/ন;->λ()I

    move-result v0

    return v0
.end method

.method public ʭ()I
    .locals 4

    .line 152
    invoke-direct {p0}, Lo/ন;->λ()I

    move-result v3

    .line 153
    rem-int/lit8 v0, v3, 0x2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v1, v3, 0x1

    div-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    return v0
.end method

.method public ʾ([B)V
    .locals 1

    .line 48
    iput-object p1, p0, Lo/ন;->fw:[B

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lo/ন;->Bo:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lo/ন;->Bp:I

    .line 51
    return-void
.end method
