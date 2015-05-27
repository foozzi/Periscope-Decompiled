.class public Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ajI:Ljava/math/BigInteger;

.field private asR:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;->ajI:Ljava/math/BigInteger;

    .line 51
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;->asR:Ljava/math/BigInteger;

    .line 52
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 91
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 93
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 94
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 96
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;->ajI:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;->asR:Ljava/math/BigInteger;

    return-object v0
.end method
