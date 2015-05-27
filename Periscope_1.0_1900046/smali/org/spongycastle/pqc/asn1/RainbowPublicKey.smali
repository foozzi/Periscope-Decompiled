.class public Lorg/spongycastle/pqc/asn1/RainbowPublicKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private ben:Lorg/spongycastle/asn1/ASN1Integer;

.field private beo:[[B

.field private bep:[[B

.field private beq:[B


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 3

    .line 74
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 75
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    .line 76
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->ben:Lorg/spongycastle/asn1/ASN1Integer;

    .line 77
    invoke-static {p2}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˋ([[S)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->beo:[[B

    .line 78
    invoke-static {p3}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˋ([[S)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->bep:[[B

    .line 79
    invoke-static {p4}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˏ([S)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->beq:[B

    .line 80
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 42
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 53
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->ben:Lorg/spongycastle/asn1/ASN1Integer;

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->beo:[[B

    .line 57
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 59
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->beo:[[B

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    aput-object v1, v0, v3

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v3, v0

    .line 63
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->bep:[[B

    .line 64
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 66
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->bep:[[B

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    aput-object v1, v0, v4

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 69
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v4, v0

    .line 70
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->beq:[B

    .line 71
    return-void
.end method

.method public static ȋ(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/RainbowPublicKey;
    .locals 2

    .line 84
    instance-of v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;

    if-eqz v0, :cond_0

    .line 86
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;

    return-object v0

    .line 88
    :cond_0
    if-eqz p0, :cond_1

    .line 90
    new-instance v0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 93
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    .line 135
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 138
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 148
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->ben:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 151
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 152
    const/4 v4, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->beo:[[B

    array-length v0, v0

    if-ge v4, v0, :cond_1

    .line 154
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->beo:[[B

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 156
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 159
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 160
    const/4 v5, 0x0

    :goto_2
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->bep:[[B

    array-length v0, v0

    if-ge v5, v0, :cond_2

    .line 162
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->bep:[[B

    aget-object v1, v1, v5

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 164
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 167
    new-instance v5, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 168
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->beq:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v5, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 169
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 172
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public qD()I
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->ben:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public qE()[[S
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->beo:[[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˎ([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public qF()[[S
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->bep:[[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˎ([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public qG()[S
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->beq:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ﻧ([B)[S

    move-result-object v0

    return-object v0
.end method
