.class public Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitString"
.end annotation


# instance fields
.field bgt:I

.field bgu:I

.field bytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    return-void
.end method


# virtual methods
.method public ˈ(B)V
    .locals 6

    .line 149
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->ᐣ([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    .line 154
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    if-nez v0, :cond_1

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    .line 157
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 158
    const/16 v0, 0x8

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgu:I

    goto :goto_0

    .line 160
    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgu:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 162
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    aput-byte p1, v0, v1

    goto :goto_0

    .line 166
    :cond_2
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgu:I

    rsub-int/lit8 v5, v0, 0x8

    .line 167
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v2, v0, v1

    and-int/lit16 v3, p1, 0xff

    iget v4, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgu:I

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 168
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    and-int/lit16 v2, p1, 0xff

    shr-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 170
    :goto_0
    return-void
.end method

.method public Ξ(I)Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;
    .locals 7

    .line 180
    new-instance v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;-><init>()V

    .line 181
    add-int/lit8 v0, p1, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    .line 182
    iget v0, v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    new-array v0, v0, [B

    iput-object v0, v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    .line 183
    const/4 v6, 0x0

    :goto_0
    iget v0, v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    if-ge v6, v0, :cond_0

    .line 185
    iget-object v0, v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v1, v1, v6

    aput-byte v1, v0, v6

    .line 183
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 188
    :cond_0
    rem-int/lit8 v0, p1, 0x8

    iput v0, v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgu:I

    .line 189
    iget v0, v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgu:I

    if-nez v0, :cond_1

    .line 191
    const/16 v0, 0x8

    iput v0, v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgu:I

    goto :goto_1

    .line 195
    :cond_1
    iget v0, v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgu:I

    rsub-int/lit8 v6, v0, 0x20

    .line 196
    iget-object v0, v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v1, v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v3, v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    shl-int/2addr v2, v6

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 199
    :goto_1
    return-object v5
.end method

.method public ς(I)I
    .locals 8

    .line 210
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgu:I

    add-int/2addr v0, v1

    sub-int v2, v0, p1

    .line 211
    div-int/lit8 v3, v2, 0x8

    .line 213
    rem-int/lit8 v4, v2, 0x8

    .line 214
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    ushr-int v5, v0, v4

    .line 215
    rsub-int/lit8 v6, v4, 0x8

    .line 216
    add-int/lit8 v7, v3, 0x1

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bgt:I

    if-ge v7, v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr v5, v0

    .line 219
    add-int/lit8 v6, v6, 0x8

    .line 216
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 222
    :cond_0
    return v5
.end method

.method ﹻ([B)V
    .locals 2

    .line 136
    const/4 v1, 0x0

    :goto_0
    array-length v0, p1

    if-eq v1, v0, :cond_0

    .line 138
    aget-byte v0, p1, v1

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->ˈ(B)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method
