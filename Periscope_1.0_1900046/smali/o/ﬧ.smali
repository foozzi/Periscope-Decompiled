.class Lo/ﬧ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field gA:I

.field gB:I

.field gC:I

.field gD:[I

.field gE:I

.field gF:[B

.field private gj:I

.field private gk:I

.field private gl:[B

.field private gm:I

.field private gn:I

.field private go:I

.field gp:I

.field gq:I

.field gr:I

.field gs:I

.field gt:[I

.field gu:[I

.field gv:I

.field gw:I

.field gx:Z

.field gy:I

.field gz:I


# direct methods
.method constructor <init>(II[BI)V
    .locals 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0xc

    iput v0, p0, Lo/ﬧ;->gq:I

    .line 52
    const/16 v0, 0x1000

    iput v0, p0, Lo/ﬧ;->gs:I

    .line 54
    const/16 v0, 0x138b

    new-array v0, v0, [I

    iput-object v0, p0, Lo/ﬧ;->gt:[I

    .line 56
    const/16 v0, 0x138b

    new-array v0, v0, [I

    iput-object v0, p0, Lo/ﬧ;->gu:[I

    .line 58
    const/16 v0, 0x138b

    iput v0, p0, Lo/ﬧ;->gv:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lo/ﬧ;->gw:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﬧ;->gx:Z

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lo/ﬧ;->gB:I

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lo/ﬧ;->gC:I

    .line 103
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lo/ﬧ;->gD:[I

    .line 110
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lo/ﬧ;->gF:[B

    .line 114
    iput p1, p0, Lo/ﬧ;->gj:I

    .line 115
    iput p2, p0, Lo/ﬧ;->gk:I

    .line 116
    iput-object p3, p0, Lo/ﬧ;->gl:[B

    .line 117
    const/4 v0, 0x2

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lo/ﬧ;->gm:I

    .line 118
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method private ʌ()I
    .locals 4

    .line 245
    iget v0, p0, Lo/ﬧ;->gn:I

    if-nez v0, :cond_0

    .line 246
    const/4 v0, -0x1

    return v0

    .line 248
    :cond_0
    iget v0, p0, Lo/ﬧ;->gn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/ﬧ;->gn:I

    .line 250
    iget-object v0, p0, Lo/ﬧ;->gl:[B

    iget v1, p0, Lo/ﬧ;->go:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/ﬧ;->go:I

    aget-byte v3, v0, v1

    .line 252
    and-int/lit16 v0, v3, 0xff

    return v0
.end method


# virtual methods
.method encode(Ljava/io/OutputStream;)V
    .locals 2

    .line 218
    iget v0, p0, Lo/ﬧ;->gm:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 220
    iget v0, p0, Lo/ﬧ;->gj:I

    iget v1, p0, Lo/ﬧ;->gk:I

    mul-int/2addr v0, v1

    iput v0, p0, Lo/ﬧ;->gn:I

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lo/ﬧ;->go:I

    .line 223
    iget v0, p0, Lo/ﬧ;->gm:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lo/ﬧ;->ˊ(ILjava/io/OutputStream;)V

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 226
    return-void
.end method

.method ˊ(BLjava/io/OutputStream;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lo/ﬧ;->gF:[B

    iget v1, p0, Lo/ﬧ;->gE:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/ﬧ;->gE:I

    aput-byte p1, v0, v1

    .line 124
    iget v0, p0, Lo/ﬧ;->gE:I

    const/16 v1, 0xfe

    if-lt v0, v1, :cond_0

    .line 125
    invoke-virtual {p0, p2}, Lo/ﬧ;->ˎ(Ljava/io/OutputStream;)V

    .line 126
    :cond_0
    return-void
.end method

.method ˊ(ILjava/io/OutputStream;)V
    .locals 10

    .line 155
    iput p1, p0, Lo/ﬧ;->gy:I

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﬧ;->gx:Z

    .line 159
    iget v0, p0, Lo/ﬧ;->gy:I

    iput v0, p0, Lo/ﬧ;->gp:I

    .line 160
    iget v0, p0, Lo/ﬧ;->gp:I

    invoke-virtual {p0, v0}, Lo/ﬧ;->ײ(I)I

    move-result v0

    iput v0, p0, Lo/ﬧ;->gr:I

    .line 162
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    iput v0, p0, Lo/ﬧ;->gz:I

    .line 163
    iget v0, p0, Lo/ﬧ;->gz:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ﬧ;->gA:I

    .line 164
    iget v0, p0, Lo/ﬧ;->gz:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/ﬧ;->gw:I

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lo/ﬧ;->gE:I

    .line 168
    invoke-direct {p0}, Lo/ﬧ;->ʌ()I

    move-result v6

    .line 170
    const/4 v9, 0x0

    .line 171
    iget v3, p0, Lo/ﬧ;->gv:I

    :goto_0
    const/high16 v0, 0x10000

    if-ge v3, v0, :cond_0

    .line 172
    add-int/lit8 v9, v9, 0x1

    .line 171
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 173
    :cond_0
    rsub-int/lit8 v9, v9, 0x8

    .line 175
    iget v8, p0, Lo/ﬧ;->gv:I

    .line 176
    invoke-virtual {p0, v8}, Lo/ﬧ;->Ӏ(I)V

    .line 178
    iget v0, p0, Lo/ﬧ;->gz:I

    invoke-virtual {p0, v0, p2}, Lo/ﬧ;->ˋ(ILjava/io/OutputStream;)V

    .line 181
    :goto_1
    invoke-direct {p0}, Lo/ﬧ;->ʌ()I

    move-result v0

    move v5, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 182
    iget v0, p0, Lo/ﬧ;->gq:I

    shl-int v0, v5, v0

    add-int v3, v0, v6

    .line 183
    shl-int v0, v5, v9

    xor-int v4, v0, v6

    .line 185
    iget-object v0, p0, Lo/ﬧ;->gt:[I

    aget v0, v0, v4

    if-ne v0, v3, :cond_1

    .line 186
    iget-object v0, p0, Lo/ﬧ;->gu:[I

    aget v6, v0, v4

    .line 187
    goto :goto_1

    .line 188
    :cond_1
    iget-object v0, p0, Lo/ﬧ;->gt:[I

    aget v0, v0, v4

    if-ltz v0, :cond_5

    .line 190
    sub-int v7, v8, v4

    .line 191
    if-nez v4, :cond_2

    .line 192
    const/4 v7, 0x1

    .line 194
    :cond_2
    sub-int v0, v4, v7

    move v4, v0

    if-gez v0, :cond_3

    .line 195
    add-int/2addr v4, v8

    .line 197
    :cond_3
    iget-object v0, p0, Lo/ﬧ;->gt:[I

    aget v0, v0, v4

    if-ne v0, v3, :cond_4

    .line 198
    iget-object v0, p0, Lo/ﬧ;->gu:[I

    aget v6, v0, v4

    .line 199
    goto :goto_1

    .line 201
    :cond_4
    iget-object v0, p0, Lo/ﬧ;->gt:[I

    aget v0, v0, v4

    if-gez v0, :cond_2

    .line 203
    :cond_5
    invoke-virtual {p0, v6, p2}, Lo/ﬧ;->ˋ(ILjava/io/OutputStream;)V

    .line 204
    move v6, v5

    .line 205
    iget v0, p0, Lo/ﬧ;->gw:I

    iget v1, p0, Lo/ﬧ;->gs:I

    if-ge v0, v1, :cond_6

    .line 206
    iget-object v0, p0, Lo/ﬧ;->gu:[I

    iget v1, p0, Lo/ﬧ;->gw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/ﬧ;->gw:I

    aput v1, v0, v4

    .line 207
    iget-object v0, p0, Lo/ﬧ;->gt:[I

    aput v3, v0, v4

    goto/16 :goto_1

    .line 209
    :cond_6
    invoke-virtual {p0, p2}, Lo/ﬧ;->ˋ(Ljava/io/OutputStream;)V

    goto/16 :goto_1

    .line 212
    :cond_7
    invoke-virtual {p0, v6, p2}, Lo/ﬧ;->ˋ(ILjava/io/OutputStream;)V

    .line 213
    iget v0, p0, Lo/ﬧ;->gA:I

    invoke-virtual {p0, v0, p2}, Lo/ﬧ;->ˋ(ILjava/io/OutputStream;)V

    .line 214
    return-void
.end method

.method ˋ(ILjava/io/OutputStream;)V
    .locals 3

    .line 256
    iget v0, p0, Lo/ﬧ;->gB:I

    iget-object v1, p0, Lo/ﬧ;->gD:[I

    iget v2, p0, Lo/ﬧ;->gC:I

    aget v1, v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lo/ﬧ;->gB:I

    .line 258
    iget v0, p0, Lo/ﬧ;->gC:I

    if-lez v0, :cond_0

    .line 259
    iget v0, p0, Lo/ﬧ;->gB:I

    iget v1, p0, Lo/ﬧ;->gC:I

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    iput v0, p0, Lo/ﬧ;->gB:I

    goto :goto_0

    .line 261
    :cond_0
    iput p1, p0, Lo/ﬧ;->gB:I

    .line 263
    :goto_0
    iget v0, p0, Lo/ﬧ;->gC:I

    iget v1, p0, Lo/ﬧ;->gp:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/ﬧ;->gC:I

    .line 265
    :goto_1
    iget v0, p0, Lo/ﬧ;->gC:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 266
    iget v0, p0, Lo/ﬧ;->gB:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lo/ﬧ;->ˊ(BLjava/io/OutputStream;)V

    .line 267
    iget v0, p0, Lo/ﬧ;->gB:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lo/ﬧ;->gB:I

    .line 268
    iget v0, p0, Lo/ﬧ;->gC:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lo/ﬧ;->gC:I

    goto :goto_1

    .line 273
    :cond_1
    iget v0, p0, Lo/ﬧ;->gw:I

    iget v1, p0, Lo/ﬧ;->gr:I

    if-gt v0, v1, :cond_2

    iget-boolean v0, p0, Lo/ﬧ;->gx:Z

    if-eqz v0, :cond_5

    .line 274
    :cond_2
    iget-boolean v0, p0, Lo/ﬧ;->gx:Z

    if-eqz v0, :cond_3

    .line 275
    iget v0, p0, Lo/ﬧ;->gy:I

    iput v0, p0, Lo/ﬧ;->gp:I

    invoke-virtual {p0, v0}, Lo/ﬧ;->ײ(I)I

    move-result v0

    iput v0, p0, Lo/ﬧ;->gr:I

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﬧ;->gx:Z

    goto :goto_2

    .line 278
    :cond_3
    iget v0, p0, Lo/ﬧ;->gp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ﬧ;->gp:I

    .line 279
    iget v0, p0, Lo/ﬧ;->gp:I

    iget v1, p0, Lo/ﬧ;->gq:I

    if-ne v0, v1, :cond_4

    .line 280
    iget v0, p0, Lo/ﬧ;->gs:I

    iput v0, p0, Lo/ﬧ;->gr:I

    goto :goto_2

    .line 282
    :cond_4
    iget v0, p0, Lo/ﬧ;->gp:I

    invoke-virtual {p0, v0}, Lo/ﬧ;->ײ(I)I

    move-result v0

    iput v0, p0, Lo/ﬧ;->gr:I

    .line 286
    :cond_5
    :goto_2
    iget v0, p0, Lo/ﬧ;->gA:I

    if-ne p1, v0, :cond_7

    .line 288
    :goto_3
    iget v0, p0, Lo/ﬧ;->gC:I

    if-lez v0, :cond_6

    .line 289
    iget v0, p0, Lo/ﬧ;->gB:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lo/ﬧ;->ˊ(BLjava/io/OutputStream;)V

    .line 290
    iget v0, p0, Lo/ﬧ;->gB:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lo/ﬧ;->gB:I

    .line 291
    iget v0, p0, Lo/ﬧ;->gC:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lo/ﬧ;->gC:I

    goto :goto_3

    .line 294
    :cond_6
    invoke-virtual {p0, p2}, Lo/ﬧ;->ˎ(Ljava/io/OutputStream;)V

    .line 296
    :cond_7
    return-void
.end method

.method ˋ(Ljava/io/OutputStream;)V
    .locals 2

    .line 132
    iget v0, p0, Lo/ﬧ;->gv:I

    invoke-virtual {p0, v0}, Lo/ﬧ;->Ӏ(I)V

    .line 133
    iget v0, p0, Lo/ﬧ;->gz:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/ﬧ;->gw:I

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﬧ;->gx:Z

    .line 136
    iget v0, p0, Lo/ﬧ;->gz:I

    invoke-virtual {p0, v0, p1}, Lo/ﬧ;->ˋ(ILjava/io/OutputStream;)V

    .line 137
    return-void
.end method

.method ˎ(Ljava/io/OutputStream;)V
    .locals 3

    .line 230
    iget v0, p0, Lo/ﬧ;->gE:I

    if-lez v0, :cond_0

    .line 231
    iget v0, p0, Lo/ﬧ;->gE:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 232
    iget-object v0, p0, Lo/ﬧ;->gF:[B

    iget v1, p0, Lo/ﬧ;->gE:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lo/ﬧ;->gE:I

    .line 235
    :cond_0
    return-void
.end method

.method Ӏ(I)V
    .locals 3

    .line 141
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 142
    iget-object v0, p0, Lo/ﬧ;->gt:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method final ײ(I)I
    .locals 2

    .line 238
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
