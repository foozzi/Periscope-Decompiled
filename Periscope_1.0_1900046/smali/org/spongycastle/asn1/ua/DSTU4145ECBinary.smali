.class public Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field ahz:Lorg/spongycastle/asn1/ASN1Integer;

.field asQ:Ljava/math/BigInteger;

.field avP:Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;

.field avQ:Lorg/spongycastle/asn1/ASN1OctetString;

.field avR:Lorg/spongycastle/asn1/ASN1Integer;

.field avS:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 60
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->asQ:Ljava/math/BigInteger;

    .line 61
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-object v3, v0

    .line 66
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    .line 68
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eN()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->asQ:Ljava/math/BigInteger;

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object parse error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;->ї(Ljava/lang/Object;)Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->avP:Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;

    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->ahz:Lorg/spongycastle/asn1/ASN1Integer;

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->avQ:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->avR:Lorg/spongycastle/asn1/ASN1Integer;

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->avS:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 85
    return-void
.end method

.method public static Ӏ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;
    .locals 2

    .line 89
    instance-of v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    if-eqz v0, :cond_0

    .line 91
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    return-object v0

    .line 94
    :cond_0
    if-eqz p0, :cond_1

    .line 96
    new-instance v0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 99
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 139
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 141
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->asQ:Ljava/math/BigInteger;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 143
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->asQ:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->avP:Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 146
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->ahz:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 147
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->avQ:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 148
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->avR:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->avS:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 151
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public getA()Ljava/math/BigInteger;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->ahz:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public gw()Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->avP:Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;

    return-object v0
.end method

.method public gx()[B
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->avQ:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method

.method public gy()Ljava/math/BigInteger;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->avR:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public gz()[B
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->avS:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method
