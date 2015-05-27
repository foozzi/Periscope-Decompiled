.class public Lorg/spongycastle/asn1/eac/RSAPublicKey;
.super Lorg/spongycastle/asn1/eac/PublicKeyDataObject;
.source ""


# static fields
.field private static ajK:I

.field private static ajL:I


# instance fields
.field private ajI:Ljava/math/BigInteger;

.field private ajJ:Ljava/math/BigInteger;

.field private ajy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x1

    sput v0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->ajK:I

    .line 32
    const/4 v0, 0x2

    sput v0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->ajL:I

    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 112
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 114
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->ajy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    new-instance v0, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 116
    new-instance v0, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 118
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->ajI:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->ajJ:Ljava/math/BigInteger;

    return-object v0
.end method
