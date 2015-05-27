.class public Lorg/spongycastle/asn1/DERApplicationSpecific;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""


# instance fields
.field private final aaY:Z

.field private final aaZ:[B

.field private final tag:I


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 6

    .line 70
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 71
    iput p1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaY:Z

    .line 73
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-eq v4, v0, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {p2, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ʱ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Object;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_1

    .line 81
    :catch_0
    move-exception v5

    .line 83
    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 75
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaZ:[B

    .line 87
    return-void
.end method

.method public constructor <init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 6

    .line 48
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 49
    invoke-interface {p3}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 51
    const-string v0, "DER"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    .line 53
    if-nez p1, :cond_0

    instance-of v0, v2, Lorg/spongycastle/asn1/ASN1Set;

    if-nez v0, :cond_0

    instance-of v0, v2, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaY:Z

    .line 54
    iput p2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    .line 56
    if-eqz p1, :cond_2

    .line 58
    iput-object v3, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaZ:[B

    goto :goto_1

    .line 62
    :cond_2
    invoke-direct {p0, v3}, Lorg/spongycastle/asn1/DERApplicationSpecific;->י([B)I

    move-result v4

    .line 63
    array-length v0, v3

    sub-int/2addr v0, v4

    new-array v5, v0, [B

    .line 64
    array-length v0, v5

    const/4 v1, 0x0

    invoke-static {v3, v4, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput-object v5, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaZ:[B

    .line 67
    :goto_1
    return-void
.end method

.method constructor <init>(ZI[B)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 23
    iput-boolean p1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaY:Z

    .line 24
    iput p2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    .line 25
    iput-object p3, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaZ:[B

    .line 26
    return-void
.end method

.method private ˋ(I[B)[B
    .locals 5

    .line 231
    const/4 v0, 0x0

    aget-byte v0, p2, v0

    and-int/lit8 v2, v0, 0x1f

    .line 232
    const/4 v3, 0x1

    .line 236
    const/16 v0, 0x1f

    if-ne v2, v0, :cond_2

    .line 238
    const/4 v2, 0x0

    .line 240
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v4, v0, 0xff

    .line 244
    and-int/lit8 v0, v4, 0x7f

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    const-string v1, "corrupted stream - invalid high tag number found"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    :goto_0
    if-ltz v4, :cond_1

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_1

    .line 251
    and-int/lit8 v0, v4, 0x7f

    or-int/2addr v2, v0

    .line 252
    shl-int/lit8 v2, v2, 0x7

    .line 253
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v4, v0, 0xff

    goto :goto_0

    .line 256
    :cond_1
    and-int/lit8 v0, v4, 0x7f

    or-int/2addr v2, v0

    .line 259
    :cond_2
    array-length v0, p2

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [B

    .line 261
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-static {p2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    int-to-byte v0, p1

    const/4 v1, 0x0

    aput-byte v0, v4, v1

    .line 265
    return-object v4
.end method

.method private י([B)I
    .locals 5

    .line 112
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v3, v0, 0xff

    .line 114
    const/16 v0, 0x80

    if-ne v3, v0, :cond_0

    .line 116
    const/4 v0, 0x2

    return v0

    .line 119
    :cond_0
    const/16 v0, 0x7f

    if-le v3, v0, :cond_2

    .line 121
    and-int/lit8 v4, v3, 0x7f

    .line 124
    const/4 v0, 0x4

    if-le v4, v0, :cond_1

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DER length more than 4 bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    add-int/lit8 v0, v4, 0x2

    return v0

    .line 132
    :cond_2
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public ex()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaY:Z

    return v0
.end method

.method ey()I
    .locals 2

    .line 191
    iget v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->ј(I)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaZ:[B

    array-length v1, v1

    invoke-static {v1}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaZ:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public fd()[B
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaZ:[B

    return-object v0
.end method

.method public fe()I
    .locals 1

    .line 147
    iget v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 225
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaY:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaZ:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 3

    .line 199
    const/16 v2, 0x40

    .line 200
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaY:Z

    if-eqz v0, :cond_0

    .line 202
    const/16 v2, 0x60

    .line 205
    :cond_0
    iget v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    iget-object v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaZ:[B

    invoke-virtual {p1, v2, v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(II[B)V

    .line 206
    return-void
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 211
    instance-of v0, p1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    move-object v2, v0

    .line 218
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaY:Z

    iget-boolean v1, v2, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaY:Z

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    iget v1, v2, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaZ:[B

    iget-object v1, v2, Lorg/spongycastle/asn1/DERApplicationSpecific;->aaZ:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Ј(I)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 172
    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    .line 174
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported tag number"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getEncoded()[B

    move-result-object v2

    .line 178
    invoke-direct {p0, p1, v2}, Lorg/spongycastle/asn1/DERApplicationSpecific;->ˋ(I[B)[B

    move-result-object v3

    .line 180
    const/4 v0, 0x0

    aget-byte v0, v2, v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x0

    aget-byte v0, v3, v0

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v3, v1

    .line 185
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->eH()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
