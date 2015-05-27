.class public Lorg/spongycastle/asn1/ASN1Enumerated;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""


# static fields
.field private static aak:[Lorg/spongycastle/asn1/ASN1Enumerated;


# instance fields
.field bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/spongycastle/asn1/ASN1Enumerated;

    sput-object v0, Lorg/spongycastle/asn1/ASN1Enumerated;->aak:[Lorg/spongycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 79
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 80
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    .line 81
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    .line 103
    return-void
.end method

.method public static ᵛ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Enumerated;
    .locals 4

    .line 26
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Enumerated;

    if-eqz v0, :cond_1

    .line 28
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Enumerated;

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

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Enumerated;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Enumerated;
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

.method static ﾞ([B)Lorg/spongycastle/asn1/ASN1Enumerated;
    .locals 4

    .line 149
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 151
    new-instance v0, Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>([B)V

    return-object v0

    .line 154
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ENUMERATED has zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v2, v0, 0xff

    .line 160
    sget-object v0, Lorg/spongycastle/asn1/ASN1Enumerated;->aak:[Lorg/spongycastle/asn1/ASN1Enumerated;

    array-length v0, v0

    if-lt v2, v0, :cond_2

    .line 162
    new-instance v0, Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>([B)V

    return-object v0

    .line 165
    :cond_2
    sget-object v0, Lorg/spongycastle/asn1/ASN1Enumerated;->aak:[Lorg/spongycastle/asn1/ASN1Enumerated;

    aget-object v3, v0, v2

    .line 167
    if-nez v3, :cond_3

    .line 169
    sget-object v0, Lorg/spongycastle/asn1/ASN1Enumerated;->aak:[Lorg/spongycastle/asn1/ASN1Enumerated;

    new-instance v3, Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>([B)V

    aput-object v3, v0, v2

    .line 172
    :cond_3
    return-object v3
.end method


# virtual methods
.method public eA()Ljava/math/BigInteger;
    .locals 2

    .line 107
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

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
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    .line 125
    return-void
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 130
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Enumerated;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/ASN1Enumerated;

    move-object v2, v0

    .line 137
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    iget-object v1, v2, Lorg/spongycastle/asn1/ASN1Enumerated;->bytes:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method
