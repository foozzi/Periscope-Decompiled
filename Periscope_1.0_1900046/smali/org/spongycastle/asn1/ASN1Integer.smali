.class public Lorg/spongycastle/asn1/ASN1Integer;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""


# instance fields
.field bytes:[B


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 75
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 81
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    .line 82
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 87
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1Integer;-><init>([BZ)V

    .line 88
    return-void
.end method

.method constructor <init>([BZ)V
    .locals 1

    .line 91
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 92
    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    .line 93
    return-void
.end method

.method public static ˋ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;
    .locals 3

    .line 60
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 62
    if-nez p1, :cond_0

    instance-of v0, v2, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0

    .line 68
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>([B)V

    return-object v0
.end method

.method public static ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;
    .locals 4

    .line 26
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_1

    .line 28
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0

    .line 31
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 35
    move-object v0, p0

    :try_start_0
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 37
    :catch_0
    move-exception v3

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoding error in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
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


# virtual methods
.method public eA()Ljava/math/BigInteger;
    .locals 2

    .line 97
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public eI()Ljava/math/BigInteger;
    .locals 3

    .line 107
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method ex()Z
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 129
    const/4 v2, 0x0

    .line 131
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    array-length v0, v0

    if-eq v3, v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    rem-int/lit8 v1, v3, 0x4

    shl-int/2addr v0, v1

    xor-int/2addr v2, v0

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    .line 125
    return-void
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 142
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Integer;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    move-object v2, v0

    .line 149
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    iget-object v1, v2, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method
