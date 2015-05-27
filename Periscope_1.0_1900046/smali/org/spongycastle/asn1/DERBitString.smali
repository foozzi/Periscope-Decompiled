.class public Lorg/spongycastle/asn1/DERBitString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# static fields
.field private static final abb:[C


# instance fields
.field protected abc:I

.field public fw:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/asn1/DERBitString;->abb:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 168
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 169
    invoke-static {p1}, Lorg/spongycastle/asn1/DERBitString;->getBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/DERBitString;->fw:[B

    .line 170
    invoke-static {p1}, Lorg/spongycastle/asn1/DERBitString;->с(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/DERBitString;->abc:I

    .line 171
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2

    .line 176
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 177
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/DERBitString;->fw:[B

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/DERBitString;->abc:I

    .line 179
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/DERBitString;-><init>([BI)V

    .line 164
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 156
    iput-object p1, p0, Lorg/spongycastle/asn1/DERBitString;->fw:[B

    .line 157
    iput p2, p0, Lorg/spongycastle/asn1/DERBitString;->abc:I

    .line 158
    return-void
.end method

.method protected static getBytes(I)[B
    .locals 5

    .line 76
    const/4 v2, 0x4

    .line 77
    const/4 v3, 0x3

    :goto_0
    const/4 v0, 0x1

    if-lt v3, v0, :cond_1

    .line 79
    mul-int/lit8 v0, v3, 0x8

    const/16 v1, 0xff

    shl-int v0, v1, v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 81
    goto :goto_1

    .line 83
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 77
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    new-array v3, v2, [B

    .line 87
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    .line 89
    mul-int/lit8 v0, v4, 0x8

    shr-int v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 92
    :cond_2
    return-object v3
.end method

.method public static ʸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;
    .locals 3

    .line 105
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/DERBitString;

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/DERBitString;

    return-object v0

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ʽ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;
    .locals 2

    .line 127
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 129
    if-nez p1, :cond_0

    instance-of v0, v1, Lorg/spongycastle/asn1/DERBitString;

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    invoke-static {v1}, Lorg/spongycastle/asn1/DERBitString;->ʸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    return-object v0

    .line 135
    :cond_1
    move-object v0, v1

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERBitString;->ٴ([B)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    return-object v0
.end method

.method static ˊ(ILjava/io/InputStream;)Lorg/spongycastle/asn1/DERBitString;
    .locals 4

    .line 300
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 306
    add-int/lit8 v0, p0, -0x1

    new-array v3, v0, [B

    .line 308
    array-length v0, v3

    if-eqz v0, :cond_1

    .line 310
    invoke-static {p1, v3}, Lorg/spongycastle/util/io/Streams;->ˎ(Ljava/io/InputStream;[B)I

    move-result v0

    array-length v1, v3

    if-eq v0, v1, :cond_1

    .line 312
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of BIT STRING"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v0, v3, v2}, Lorg/spongycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0
.end method

.method protected static с(I)I
    .locals 4

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x3

    :goto_0
    if-ltz v3, :cond_2

    .line 35
    if-eqz v3, :cond_0

    .line 37
    mul-int/lit8 v0, v3, 0x8

    shr-int v0, p0, v0

    if-eqz v0, :cond_1

    .line 39
    mul-int/lit8 v0, v3, 0x8

    shr-int v0, p0, v0

    and-int/lit16 v2, v0, 0xff

    .line 40
    goto :goto_1

    .line 45
    :cond_0
    if-eqz p0, :cond_1

    .line 47
    and-int/lit16 v2, p0, 0xff

    .line 48
    goto :goto_1

    .line 29
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 53
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 55
    const/4 v0, 0x7

    return v0

    .line 59
    :cond_3
    const/4 v3, 0x1

    .line 61
    :goto_2
    shl-int/lit8 v0, v2, 0x1

    move v2, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_4

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 66
    :cond_4
    rsub-int/lit8 v0, v3, 0x8

    return v0
.end method

.method static ٴ([B)Lorg/spongycastle/asn1/DERBitString;
    .locals 5

    .line 281
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    const/4 v0, 0x0

    aget-byte v3, p0, v0

    .line 287
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v4, v0, [B

    .line 289
    array-length v0, v4

    if-eqz v0, :cond_1

    .line 291
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v0, v4, v3}, Lorg/spongycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0
.end method


# virtual methods
.method ex()Z
    .locals 1

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 2

    .line 214
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBitString;->fw:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERBitString;->fw:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public ff()I
    .locals 1

    .line 188
    iget v0, p0, Lorg/spongycastle/asn1/DERBitString;->abc:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBitString;->fw:[B

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 8

    .line 250
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 251
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 252
    new-instance v5, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v5, v4}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 256
    :try_start_0
    invoke-virtual {v5, p0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    goto :goto_0

    .line 258
    :catch_0
    move-exception v6

    .line 260
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error encoding BitString"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :goto_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 265
    const/4 v7, 0x0

    :goto_1
    array-length v0, v6

    if-eq v7, v0, :cond_0

    .line 267
    sget-object v0, Lorg/spongycastle/asn1/DERBitString;->abb:[C

    aget-byte v1, v6, v7

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    sget-object v0, Lorg/spongycastle/asn1/DERBitString;->abb:[C

    aget-byte v1, v6, v7

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 265
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 271
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 231
    iget v0, p0, Lorg/spongycastle/asn1/DERBitString;->abc:I

    iget-object v1, p0, Lorg/spongycastle/asn1/DERBitString;->fw:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 4

    .line 197
    const/4 v2, 0x0

    .line 199
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBitString;->fw:[B

    array-length v0, v0

    if-eq v3, v0, :cond_0

    const/4 v0, 0x4

    if-eq v3, v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/spongycastle/asn1/DERBitString;->fw:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v1, v3, 0x8

    shl-int/2addr v0, v1

    or-int/2addr v2, v0

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 5

    .line 221
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [B

    .line 223
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBitString;->ff()I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v4, v1

    .line 224
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v4}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    .line 227
    return-void
.end method

.method protected ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 237
    instance-of v0, p1, Lorg/spongycastle/asn1/DERBitString;

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    return v0

    .line 242
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/DERBitString;

    move-object v2, v0

    .line 244
    iget v0, p0, Lorg/spongycastle/asn1/DERBitString;->abc:I

    iget v1, v2, Lorg/spongycastle/asn1/DERBitString;->abc:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/spongycastle/asn1/DERBitString;->fw:[B

    iget-object v1, v2, Lorg/spongycastle/asn1/DERBitString;->fw:[B

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
